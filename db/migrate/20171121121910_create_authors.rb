class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
    	t.belongs_to :book, index: { unique: true }, foreign_key:
t.string :name
    t.string :email
      t.timestamps
    end
  end
end
