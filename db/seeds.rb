Client.destroy_all
Review.destroy_all
Rental.destroy_all
VhsTape.destroy_all
20.times{
    emailsuffix = [
        "@gmail.com",
        "@outlook.com",
        "@yahoo.com",
        "@hotmail.com",
        "@aol.com"
    ]
    firstname = Faker::Name.unique.first_name
    lastname = Faker::Name.unique.last_name
    age = rand(18..125)
    year = String(DateTime.now.year-age)
    username = firstname+lastname[0,rand(1..3)]+ String(year)[2,3]
    email = firstname+lastname+year+emailsuffix.sample
    Client.create(first_name: firstname, last_name: lastname, email: email, age: age, username: username, password:"password")
}
puts "finished clients"
50.times{
    title = Faker::Movie.title
    description = Faker::Lorem.paragraph(sentence_count: (rand(7..13)))
    price = rand(10..25)
    rating = ["G","PG","PG-13","R"]
    VhsTape.create(title: title, description: description, rating: rating.sample, price: price)
}
puts "finisherd vhstapes"
400.times{
    review = Faker::Lorem.paragraph(sentence_count: (rand(1..15)))
    rating = rand(1..5)
    Review.create(vhs_tape_id: VhsTape.pluck(:id).sample, review: review, star_rating: rating)
}
 puts "finished reviews"
20.times{
Rental.create(client_id: Client.pluck(:id).sample, vhs_tape_id: VhsTape.pluck(:id).sample)
}
puts "Finished"