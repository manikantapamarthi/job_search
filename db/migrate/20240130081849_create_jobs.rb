class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.integer :commitment
      t.string :location
      t.string :category
      t.boolean :remote

      t.timestamps
    end
  end
end
