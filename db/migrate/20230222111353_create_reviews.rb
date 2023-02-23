# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :content

      t.timestamps
      t.references :restaurant, foreign_key: true
    end
  end
end
