class CreatePiDigits < ActiveRecord::Migration[7.2]
  def change
    create_table :pi_digits do |t|
      t.integer :position
      t.integer :digit

      t.timestamps
    end
  end
end
