class CreateTravelblogs < ActiveRecord::Migration[7.0]
  def change
    create_table :travelblogs do |t|
      t.string :name
      t.string :place_to_visit
      t.string :contact_number
      t.string :email_id

      t.timestamps
    end
  end
end
