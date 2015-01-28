10.times do
  Note.create(
  title: Faker::Company.bs,
  body: Faker::Lorem.paragraph
  )
end
