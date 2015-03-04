vaquero = Vaquero.create!(name: "Paulo", age: 47)

one = Caballo.create!(name: 'Penelope', breed: "Arabian", age: 15)
two = Caballo.create!(name: 'Pepe', breed: "Thoroughbred", age: 25)
three = Caballo.create!(name: 'Priscilla', breed: "Pony", age: 17)
four = Caballo.create!(name: 'Pete', breed: "Andalusian", age: 24)
five = Caballo.create!(name: 'Penny', breed: "Peruvian Paso", age: 10)
six = Caballo.create!(name: 'Poppy', breed: "Icelandic", age: 8)




vaquero.caballos << one << two << three << four << five << six