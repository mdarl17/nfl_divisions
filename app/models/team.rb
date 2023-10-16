class Team < ApplicationRecord
  belongs_to :division, class_name: "Division"
  
end