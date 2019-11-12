class CreateKitties < ActiveRecord::Migration[5.2]
  def change
    create_table :kitties do |t|
      t.string :color, null: false
      t.string :location
      t.integer :legs, default: 4, null: false
      t.boolean :alive, default: true, null: false  # null false means cannot save
      # a record in the db with nil as alive, or legs or color, normally would have vaidation in the model, now we have ugly error...
      # last safety net
      t.string :photo_url

      t.timestamps
    end
  end
end
