class CreateTvs < ActiveRecord::Migration[6.0]
  def change
    create_table :tvs do |t|
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end
