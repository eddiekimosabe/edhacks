require 'faker'

languages = %w(ruby python java javascript html css)


def adj_noun_comment
	adjs = %w(Awesome Cool Clear Super Great Good Nice Smooth Jacked Rockin Great Cool Super Clear)
	nouns = %w(explanations lesson treatment education classes explanations graphics diagrams exercises)
	puncts = ["", ".", ".", "!"]
	adj = adjs[rand(adjs.length)]
	noun = nouns[rand(nouns.length)]
	punct = puncts[rand(puncts.length)]
	return "#{adj} #{noun}#{punct}"
end

def word_comment
	comments = %w(Awesome Cool Hilarious Beautiful Nice Clear)
	return comments[rand(comments.length)]
end

def sentence_comment
	comments = ["I love this", "This is awesome", "This is hilarious", "Absolutely perfect", "Very Interesting", "Subtle image"]
	puncts = ["", ".", ".", "!", ".", ".", "!!", ".", ".", "!!!"]
	punct = puncts[rand(puncts.length)]
	return "#{comments[rand(comments.length)]}#{punct}"
end

def create_comment
	comment_type = rand(4)
	return adj_noun_comment if comment_type == 0 || comment_type == 1
	return word_comment if comment_type == 2
	return sentence_comment if comment_type == 3
end



5.times do
  User.create(email: Faker::Internet.email, password: "password")
end

User.all.each do |user|
  10.times do
  	lang_id = rand(languages.length) 
    user.links << Link.create(title: Faker::Lorem.sentence, url: Faker::Internet.url, language: languages[lang_id], vote_count: rand(300))
  end
end

Link.all.each do |link|
	rand(10).times do
		userid = rand(10)+1
		Comment.create(user_id: userid, link_id: link.id, text: create_comment, vote_count: rand(200))
	end
end
