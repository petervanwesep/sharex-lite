puts "Destroying everything!"
Role.destroy_all
Account.destroy_all
Issuer.destroy_all
DirectTrade.destroy_all

puts "Creating roles!"
broker_role = Role.create!(name: "Broker", key: "broker")
admin_role = Role.create!(name: "Admin", key: "admin")

puts "Creating accounts!"
admin = Account.create!(first_name: "Alex", last_name: "Admin", email: "aadmin@example.com", roles: [admin_role])

sams_broker = Account.create!(
  first_name: "Sams",
  last_name: "Broker",
  email: "samsbroker@example.com",
  roles: [broker_role]
)

jaimes_broker = Account.create!(
  first_name: "Jaimes",
  last_name: "Broker",
  email: "jaimesbroker@example.com",
  roles: [broker_role]
)

sam = Account.create!(first_name: "Sam", last_name: "Buyer", email: "sbuyer@example.com", broker: sams_broker)
jaime = Account.create!(first_name: "Jaime", last_name: "Seller", email: "jseller@example.com", broker: jaimes_broker)

puts "Creating issuer!"
unicorn = Issuer.create!(name: "Unicorn Inc", slug: "unicorn")

puts "Creating direct trades!"
DirectTrade.create!(
  buyer: sam,
  seller: jaime,
  issuer: unicorn,
  price_per_share: 12,
  number_of_shares: 500,
  status: DirectTrade::IN_PROGRESS_STATUS
)

DirectTrade.create!(
  buyer: sam,
  seller: jaime,
  issuer: unicorn,
  price_per_share: 14,
  number_of_shares: 1200,
  status: DirectTrade::IN_PROGRESS_STATUS
)

DirectTrade.create!(
  buyer: sam,
  seller: jaime,
  issuer: unicorn,
  price_per_share: 15,
  number_of_shares: 1000,
  status: DirectTrade::CLOSED_STATUS
)

puts
