class AddEventRefToSignups < ActiveRecord::Migration
  def change
    add_reference :signups, :event, index: true
  end
end
