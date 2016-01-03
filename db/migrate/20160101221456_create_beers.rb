class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewer
      t.integer :rating

      t.timestamps null: false
    end
  end
end
