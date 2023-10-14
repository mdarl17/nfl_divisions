class Division < ApplicationRecord
  has_many :teams

  def get_conference(conf)
    division.where(conference: conf)
  end
end