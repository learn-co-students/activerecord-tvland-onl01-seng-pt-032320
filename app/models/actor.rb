class Actor < ActiveRecord::Base
  has_many :chracters
  has_many :shows, through: :chracters

  def full_name
    [self.first_name, self.last_name].join(" ")
  end
  
  def list_roles
    binding.pry
  end
end