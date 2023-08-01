# frozen_string_literal: true

class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.text :thumbnail
      t.string :title
      t.string :subtitle

      t.timestamps
    end
  end
end
