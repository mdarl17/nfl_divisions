class Division < ApplicationRecord
  has_many :teams, :dependent => :destroy

  def self.sort_by_created_date
    Division.order(created_at: :asc)
  end

  def count
    teams.count
  end

end