class Division < ApplicationRecord
  has_many :teams

  def get_conference(conf)
    self.conference
    self.name.split(" ")[1]
  end
end