class CreateChapters < ActiveRecord::Migration[7.0]
  def change
    create_table :chapters do |t|
      t.references :novel, null: false, foreign_key: true
      t.string :title, mull: false
      t.integer :chapter_number
      t.timestamps
    end
  end
end
