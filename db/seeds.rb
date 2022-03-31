Client.destroy_all
Review.destroy_all
Rental.destroy_all
VhsTape.destroy_all


Client.create(first_name:"griffin", last_name:"hughes", email:"griffinHughes2020@gmail.com", age: 19, admin:true, username:"sezlych", password:"password")

VhsTape.create(title: "bee movie", description: "ita about bees", rating: "nice", price: 72)

Review.create(vhs_tape_id: VhsTape.pluck(:id).sample, review: "very good", star_rating: 2) 

Rental.create(client_id: Client.pluck(:id).sample, vhs_tape_id: VhsTape.pluck(:id).sample)
