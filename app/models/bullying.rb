class Bullying < ApplicationRecord
  belongs_to :bully, class_name: 'Person'
  belongs_to :bulled, class_name: 'Person'
end
