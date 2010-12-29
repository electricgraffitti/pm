class CreateColorBoxes < ActiveRecord::Migration
  def self.up
    create_table :color_boxes do |t|
      t.string :color

      t.timestamps
    end
  end

  def self.down
    drop_table :color_boxes
  end
end
