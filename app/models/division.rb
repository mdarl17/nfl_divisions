class Division < ApplicationRecord
  has_many :teams

  def self.sort_by_created_date
    Division.order(created_at: :desc)
  end

  def count
    # require 'pry'; binding.pry
    teams.count
  end

end