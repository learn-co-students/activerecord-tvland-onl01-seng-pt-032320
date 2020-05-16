class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def build_network(x)
    network = Network.create(x)
    self.network_id = network.id
  end
  
  def actors_list
    # binding.pry
    self.actors.map do |actor|
      actor.full_name
    end
  end
  
end