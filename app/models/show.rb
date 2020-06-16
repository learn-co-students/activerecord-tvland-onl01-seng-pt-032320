class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    array = []
    Character.all.each do |own|
      chara = Character.find(own.id)
      actor = Actor.find(chara.actor_id)
      array << "#{actor.first_name} #{actor.last_name}"
    end
    array
  end

end
