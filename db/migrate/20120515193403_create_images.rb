class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.date :date
      t.time :time
      t.string :image_uri

      t.timestamps
    end
  end
end
