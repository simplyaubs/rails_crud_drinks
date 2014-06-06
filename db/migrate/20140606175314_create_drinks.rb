class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :brand
      t.string :flavor
    end
  end
end
