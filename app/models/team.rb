class Team < ApplicationRecord
  belongs_to :division
  
  def self.sort_by_name
    Team.order(:name)
  end

  def self.teams_in_division(div_id)
    Team.where(division_id: div_id)
  end

  def self.hide_false
    Team.where(super_bowl: :true)
  end
end