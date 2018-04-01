class AddMoreToTest < ActiveRecord::Migration[5.1]
  def change
    add_column :tests, :more, :string
  end
end
