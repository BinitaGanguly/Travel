class AddStatusToNewtables < ActiveRecord::Migration[7.0]
  def change
    add_column :newtables, :status, :string
  end
end
