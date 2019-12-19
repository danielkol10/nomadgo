# frozen_string_literal: true

class CreateProsCons < ActiveRecord::Migration[6.0]
  def change
    create_table :pros_cons do |t|
      t.references :city, null: false, foreign_key: true
      t.string :name
      t.string :pro_or_con

      t.timestamps
    end
  end
end
