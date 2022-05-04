class AddUserToRoutes < ActiveRecord::Migration[7.0]
  def change
    add_reference :routes, :user, foreign_key: true
  end
end
