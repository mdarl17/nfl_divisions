class Team < ApplicationRecord
  belongs_to :division, class_name: "Division"
  
  def self.sort(field)
    @teams = Team.order(field)
  end

  def self.hide_false
    Team.where(super_bowl: :true)
  end
end