class Show < ActiveRecord::Base
    # has_many :characters
    # has_many :actors, through: :characters


#     belongs_to :network
#   has_many :characters


    belongs_to :network
    has_many :characters
    has_many :actors, :through => :characters

    def actors_list
        self.actors.map do |actor|
            #gives us list of actor instances, map thru each actor instances and returning back full_names (not instance itself)
            #we havec array of all actor instances, we want to return name in array list
            #map = iterates thru array
            actor.full_name
        end
    end
  
end