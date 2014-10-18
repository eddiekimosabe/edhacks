require 'faker'

languages = %w(ruby python java javascript html css)

5.times do
  User.create(email: Faker::Internet.email, password: "password")
end

User.all.each do |user|
  10.times do
  	lang_id = rand(languages.length-1) 
    user.links << Link.create(title: Faker::Lorem.sentence, url: Faker::Internet.url, language: languages[lang_id], vote_count: rand(300))
  end
end

Link.all.each do |link|
	rand(10).times do
		userid = rand(10)+1
		Comment.create(user_id: userid, link_id: link.id, text: Faker::Lorem.sentence, vote_count: rand(200))
	end
end
