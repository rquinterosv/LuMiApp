class Route < ApplicationRecord
  belongs_to :country
  belongs_to :region
  belongs_to :user
end
