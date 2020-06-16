class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    role = Character.find(self.id)
    show_name = Show.find(role.show_id)
    "#{role.name} - #{show_name.name}"
  end

end
