namespace :db do
  desc "Seed the database with Faker data"
  task seed: :environment do
    User.find_each do |user|
      10.times do
        user.tasks.create(
          title: Faker::Lorem.sentence,
          description: Faker::Lorem.paragraph,
          date: Faker::Date.between(from: Date.today, to: 1.month.from_now)
        )
      end
    end
    puts "Seeded database with tasks!"
  end
end

