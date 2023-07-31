class RemoveFromTrips < ActiveRecord::Migration[7.0]
  def change
    remove_column :trips, :date_for_tour, :string
  end
end
