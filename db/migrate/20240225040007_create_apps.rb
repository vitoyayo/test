class CreateApps < ActiveRecord::Migration[7.1]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
