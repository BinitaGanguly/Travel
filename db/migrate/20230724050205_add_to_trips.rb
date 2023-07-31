class AddToTrips < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :date_for_tour, :datetime
    add_column :trips, :return_date, :datetime
  end
end
