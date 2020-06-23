class AddCatchphraseToCharacter < ActiveRecord::Migration[5.2]
def up
end

def down
end

def change 
    add_column :characters, :catchphrase, :string
end


end
