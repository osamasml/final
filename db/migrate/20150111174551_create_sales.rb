class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :good
      t.string :price
      t.date :date

      t.timestamps
    end  
  end
end
