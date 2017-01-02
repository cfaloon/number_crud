class NumberRecord < ActiveRecord::Base
  validates :value, inclusion: { in: 1..10 }
  validates :value, numericality: { only_integer: true}
end
