class CreateSentences < ActiveRecord::Migration[5.1]
  def change
    create_table :sentences do |t|
      t.string :value
      t.integer :language_id

      t.timestamps
    end
    add_index :sentences, :value, unique: true
  end
end
