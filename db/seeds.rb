# frozen_string_literal: true

Ticket.destroy_all
Driver.destroy_all
require 'net/http'
require 'json'
require 'pp'

url = 'https://data.winnipeg.ca/resource/bhrt-29rb.json'
uri = URI(url)
response = Net::HTTP.get(uri)
parsed_response = JSON.parse(response)

parsed_response.each do |num|
  new_driver = Driver.create(name: Faker::Name.unique.name,
                             phoneNum: Faker::PhoneNumber.cell_phone,
                             email: Faker::Internet.free_email,
                             age: Faker::Number.between(from: 16, to: 85))
  new_driver.tickets.create(ticketNum: num['ticket_number'],
                            street: num['street'],
                            violation: num['violation'],
                            date: num['issue_date'])
end

puts "Created #{Driver.count} ... #{Ticket.count} tickets"
