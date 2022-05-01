class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.string      :name,        null: false, default: ""
      t.string      :activity_area
      t.string      :description
      t.string      :party_image_id
      t.timestamps
    end
  end
end
