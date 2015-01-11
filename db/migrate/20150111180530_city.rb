class City < ActiveRecord::Migration
  def up
  
  end
 
  def down
  end

  def change
  add_column :sales , :city , :string
  end

end
