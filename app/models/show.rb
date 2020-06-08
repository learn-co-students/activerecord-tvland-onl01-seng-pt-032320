class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.actors.collect do |act|
            "#{act.first_name} #{act.last_name}"
        end
    end
end