class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters

    def actors_list
        self.characters.collect do |character|
            "#{character.actor.first_name} #{character.actor.last_name}"
        end
    end 
   
end