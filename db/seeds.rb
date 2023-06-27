adjectives = ["Gently Used", "Well-Loved", "Heirloom", "Antique", "WANTED", "Slightly damaged"]
descriptions = ["Free to a good home", "(batteries not included)", "As is", "Like new", "(assembly required)", "No returns!!!!"]

puts "🌱 Seeding spices..."

5.times do
  user = User.create(
    username: Faker::Internet.username,
@@ -24,3 +26,5 @@
    )
  end
end

puts "✅ Done seeding!"