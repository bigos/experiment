class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :author
      t.text :content

      t.timestamps
    end
  end
end
