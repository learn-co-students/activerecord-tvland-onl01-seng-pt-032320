class CreateCharacters < ActiveRecord::Migration[5.1]
    def change 
        create_table :characters do |t|
            t.string :name 
            t.string :actor_id
            t.string :show_id
            t.string :catchphrase
        end
    end 
        
end