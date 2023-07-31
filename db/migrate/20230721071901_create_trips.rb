class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :contact_no
      t.string :email_id
      t.integer :no_of_people
      t.string :name_of_place
      t.datetime :date_for_tour
      t.datetime :return_date

      t.timestamps
    end
  end
end
