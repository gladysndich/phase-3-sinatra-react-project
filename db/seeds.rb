puts "🌱 Seeding spices..."

# Seed your database here

#Teams
team1 = Team.create(name: "Avengers")
team2 = Team.create(name: "Panthers")
team3 = Team.create(name: "Wildcats")
team4 = Team.create(name: "Bears")
team5 = Team.create(name: "Avengers")

#Coaches
coach1 = Coach.create(name: "Martin Gitonga", team_id:team1.id)
coach2 = Coach.create(name: "Charles Mutua", team_id:team2.id)
coach3 = Coach.create(name: "Frank Omondi", team_id:team3.id)
coach4 = Coach.create(name: "Wambua Kitema", team_id:team4.id)
coach5 = Coach.create(name: "Nicholas Bor", team_id:team5.id)

#Players
player1 = Player.create(name: "Peter Wambugu", team_id:team1.id)
player2 = Player.create(name: "Jacob Makori", team_id:team1.id)
player3 = Player.create(name: "Joseph Ronoh", team_id:team2.id)
player4 = Player.create(name: "Sebastian Ikinya", team_id:team2.id)
player5 = Player.create(name: "Josphat Wairia", team_id:team3.id)
player6 = Player.create(name: "Zach Njau", team_id:team3.id)
player7 = Player.create(name: "Sam Mbugua", team_id:team4.id)
player8 = Player.create(name: "Dave Njuguna", team_id:team4.id)
player9 = Player.create(name: "Josiah Nyakundi", team_id:team5.id)
player10 = Player.create(name: "Bernard Makau", team_id:team5.id)

puts "✅ Done seeding!"
