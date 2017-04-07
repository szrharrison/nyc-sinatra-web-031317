class CreateTitles < ActiveRecord::Migration
  create_table :titles do |t|
    t.string :name
    t.timestamp
  end
end
