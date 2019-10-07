class ChangePhoneNumType < ActiveRecord::Migration[6.0]
  def change
    change_column :drivers, :phoneNum, :string
  end
end
