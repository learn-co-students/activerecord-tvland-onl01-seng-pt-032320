class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #binding.pry
    "#{self.first_name + " " + self.last_name}"
  end

  def list_roles
     #binding.pry
    self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end   
#we need to iterate over all the items in the array bc we can have arrays with alot of characters in it for the actor
end


