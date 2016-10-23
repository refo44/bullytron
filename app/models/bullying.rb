class Bullying < ApplicationRecord
  belongs_to :bully, class_name: 'Person', foreign_key:'bully_id'
  belongs_to :bulled, class_name: 'Person', foreign_key:'bulled_id'
end
