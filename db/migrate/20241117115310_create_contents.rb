class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.references :chapter, null: false, foreign_key: true
      t.text :content, null: false
      t.timestamps
    end
  end
end
