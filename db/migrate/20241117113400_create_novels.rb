class CreateNovels < ActiveRecord::Migration[7.0]
  def change
    create_table :novels do |t|

      t.timestamps
    end
  end
end
