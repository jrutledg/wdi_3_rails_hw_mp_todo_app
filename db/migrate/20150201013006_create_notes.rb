class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :body
      t.boolean :important, default: :false
      t.belongs_to :task, index: true

      t.timestamps null: false
    end
    add_foreign_key :notes, :tasks
  end
end
