class CreateJoinTableTvsRemotes < ActiveRecord::Migration[6.0]
  def change
    create_join_table :tvs, :remotes do |t|
      # t.index [:tv_id, :remote_id]
      # t.index [:remote_id, :tv_id]
    end
  end
end
