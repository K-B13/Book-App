class ChangeAuthorField < ActiveRecord::Migration[7.0]
  def change
    remove_column :authors, :'number_of_books', :string
    add_column :authors, :number_of_books, :integer
  end
end
