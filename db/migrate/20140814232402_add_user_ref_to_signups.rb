class AddUserRefToSignups < ActiveRecord::Migration
  def change
    add_reference :signups, :user, index: true
  end
end
