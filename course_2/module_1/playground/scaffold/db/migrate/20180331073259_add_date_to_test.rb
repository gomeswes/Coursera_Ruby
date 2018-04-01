class AddDateToTest < ActiveRecord::Migration[5.1]
  def change
    add_column :tests, :dob, :date
  end
end
