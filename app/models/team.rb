class Team < ApplicationRecord
  belongs_to :division
  
  def self.sort_by_name
    Team.order(name: :asc)
  end

  def self.hide_boolean
    Team.where(super_bowl: :true)
  end
end