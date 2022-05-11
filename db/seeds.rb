# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


backend = ["Aedan Yturralde",
    "Austin Moore",
    "Blake Dempsey",
    "Conor Barthel",
    "Greg Flaherty",
    "Gunnar Sorensen",
    "Joe Galvin",
    "Mark Ertmer",
    "Michael Brandt",
    "Paul Leonard",
    "Richard LaBrecque",
    "Ruben Pasillas",
    "Sam Ivari",
    "Sam Smith",
    "Steven James",
    "Sully Birashk",
    "Tamara Dowis",
    "TJ Williams",
    "Eldridge Turambi"]
    
    
    frontend = ["Ali Nooner",
    "Andrew Musselman",
    "Brenda Sotelo",
    "Casey Halstead",
    "Daniel Solomon",
    "DéNaje Ferguson",
    "Dillon Parker",
    "Emili Kaiman",
    "Emily Corcoran",
    "Eric Matlock",
    "Francesca McConnell",
    "Geena Jackson",
    "George Lemmon",
    "Jake Dunafon",
    "Jerry Vohrer",
    "Jess Fatta",
    "Jordan Skomal",
    "Katie Ammon",
    "Katie Toler",
    "Kim Ward",
    "Lauralyn Watson",
    "Maddie Law",
    "Nicole Valentini",
    "Ron L Head",
    "Rory Magee",
    "Sam Mistele",
    "Zach Liibbe"]

    frontend.each do |name|
        Student.create(name: name, program: 'FE')
    end 

    backend.each do |name|
        Student.create(name: name, program: 'BE')
    end 
