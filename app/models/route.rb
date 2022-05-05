class Route < ApplicationRecord
  belongs_to :country
  belongs_to :region
  belongs_to :user

  enum grade: [:"5-", :"5+", :"6a", :"6a+", :"6b", :"6b+", :"6c", :"6c+", :"7a", :"7a+", :"7b", :"7b+", :"7c", :"7c+", :"8a", :"8a+", :"8b", :"8b+", :"8c", :"8c+", :"9a", :"9a+", :"9b", :"9b+", :"9c", :"9c+"]

end
