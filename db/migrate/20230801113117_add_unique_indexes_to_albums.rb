# frozen_string_literal: true

class AddUniqueIndexesToAlbums < ActiveRecord::Migration[7.0]
  def change
    add_index :albums, :title, unique: true
    add_index :albums, :subtitle, unique: true
  end
end
