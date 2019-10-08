class AddAgeToDrivers < ActiveRecord::Migration[6.0]
  def change
    add_column :drivers, :age, :integer
  end
end
