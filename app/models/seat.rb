class Seat < ApplicationRecord
  belongs_to :booking , optional: true
  belongs_to :screening
end
