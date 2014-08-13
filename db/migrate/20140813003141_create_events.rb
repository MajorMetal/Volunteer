class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :when
      t.text :description
      t.string :image
      t.string :contact_phone
      t.string :contact_email

      t.timestamps
    end
  end
end
