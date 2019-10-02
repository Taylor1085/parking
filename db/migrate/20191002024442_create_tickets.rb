class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer :ticketNum
      t.date :date
      t.string :violation
      t.string :street

      t.timestamps
    end
  end
end
