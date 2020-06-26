class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  def actors_list
    self.characters.collect do |c|
      c.actor.full_name
    end
  end
end