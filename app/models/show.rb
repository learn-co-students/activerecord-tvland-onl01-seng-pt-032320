class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        names =[]
        self.actors.each do |actor|
           names << "#{actor.first_name} #{actor.last_name}"
        end
        names
     end

    
  
end