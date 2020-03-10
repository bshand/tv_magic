require 'csv'

# Allow users to search for TVs and Remotes
class SearchController < ApplicationController
  before_action :apply_filters, only: [:index, :download]

  # Main search index page, and landing page
  def index
  end

  # Download list of TVs / remotes as a CSV file
  def download
    rows = [ ['TVs:'],
             %w[id make model] ] +
           @tvs.all.collect { |tv| [tv.id, tv.make, tv.model] } +
           [ [],
             ['Remotes:'],
             %w[id name description] ] +
           @remotes.all.collect { |remote| [remote.id, remote.name, remote.description] }
    send_csv(rows.collect(&:to_csv).join, 'TVs_and_remotes')
  end

  # Testing send_csv method. I think it's expecting some sort of string, not CSV data.
  def test
    data = [Rails.env, 'tvm'].collect do |env|
      File.read(Rails.root.join("log/#{env}.log"))
    end.join
    send_csv(data, 'logger')
  end unless Rails.env == 'Production'

  private

  def search_terms
    [params[:q] || ''].reject(&:blank?)
  end
  helper_method :search_terms

  def filter(scope, terms, keys)
    conditions = []

    terms.each do |term|
      # Exact ID match on numerical terms:
      conditions << scope.where(id: term) if term =~ /\A\d+\z/
      keys.each do |key|
        conditions << scope.where("upper(#{key}) like '%#{term.upcase}%'")
      end
    end

    conditions.any? ? conditions.reduce(:or) : scope
  end

  def apply_filters
    @tvs = filter(Tv, search_terms, [:make, :model])
    @remotes = filter(Remote, search_terms, [:name, :description])
  end

  def send_csv(data, basename)
    filename = "#{basename}_#{Time.current.strftime('%Y-%m-%d_%Hh%M_%S')}.csv"
    send_data data, filename: filename, type: :csv
  end
end
