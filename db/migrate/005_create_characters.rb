class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |characters|
      characters.string :name
      characters.integer :show_id
      characters.integer :actor_id
    end
  end
end