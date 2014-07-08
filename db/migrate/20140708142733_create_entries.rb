class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :user, index: true
      t.decimal :status
      t.string :unique_id
      t.decimal :duration
      t.decimal :score
      t.string :thumbnail

      t.timestamps
    end
  end
end
