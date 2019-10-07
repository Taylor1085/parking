class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :ticket_id
      t.string :violation
      t.string :street
      t.date :date

      t.timestamps
    end
  end
end
