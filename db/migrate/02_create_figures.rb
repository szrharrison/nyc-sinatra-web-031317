class CreateFigures < ActiveRecord::Migration
  create_table :figures do |t|
    t.string :name
    t.timestamp
  end
end
