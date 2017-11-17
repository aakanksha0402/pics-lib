class CreateColorLogos < ActiveRecord::Migration[5.0]
  def change
    create_table :color_logos do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :font_set
      t.integer :theme
      t.string :primary_color
      t.string :seconday_color
      t.boolean :default_color_set, default: false

      t.timestamps
    end
  end
end
