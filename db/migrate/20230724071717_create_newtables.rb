class CreateNewtables < ActiveRecord::Migration[7.0]
  def change
    create_table :newtables do |t|
      t.string :gurdian_name
      t.date :dob
      t.string :aadhar_no
      t.string :pan_card_no
      t.string :belongs_to
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
