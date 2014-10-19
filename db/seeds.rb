require 'faker'


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

def rand_user_id
	num_users = User.all.count
	return rand(num_users) + 1
end


langs = %w(Java Python C C++ Ruby JavaScript C# HTML CSS)
langs.each { |lang| Language.create(name: lang) }


10.times do
  User.create(email: Faker::Internet.email, password: "password")
end

num_langs = langs.length




# BEGINNING OF LINK SEED

User.find(rand_user_id).links << Link.create(	title: "Stanford University: Programming Methodology (CS106A)",
														url: "https://www.youtube.com/view_play_list?p=84A56BC7F4A1F852", 
														language_id: 1, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Cave of Programming",
														url: "http://courses.caveofprogramming.com/course/java-for-complete-beginners", 
														language_id: 1, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "My Favorite Eclipse Shortcuts For Mac & Windows",
														url: "http://crunchify.com/my-favorite-eclipse-shortcuts-for-mac-and-windows/", 
														language_id: 1, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Udemy: Java Tutorial For Complete Beginners",
														url: "https://www.udemy.com/java-tutorial/", 
														language_id: 1, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Tutorials Point",
														url: "http://www.tutorialspoint.com/java/", 
														language_id: 1, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Code Project",
														url: "http://www.codeproject.com/Forums/1643/Java.aspx", 
														language_id: 1, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Academic Earth:  Java",
														url: "http://academicearth.org/computer-science/", 
														language_id: 1, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "javaBrains",
														url: "http://javabrains.koushik.org/courses.html", 
														language_id: 1, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Java Programming--Step by Step Tutorial",
														url: "https://www.youtube.com/watch?v=3u1fu6f8Hto", 
														language_id: 1, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "The Best Way To Learn JavaScript",
														url: "http://code.tutsplus.com/tutorials/the-best-way-to-learn-javascript--net-21954", 
														language_id: 6, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "W3 Schools JavaScript",
														url: "http://www.w3schools.com/js/", 
														language_id: 6, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "CodeAcademy--JavaScript",
														url: "http://www.codecademy.com/tracks/javascript", 
														language_id: 6, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "JavaScript Road Trip Part 1",
														url: "https://www.codeschool.com/courses/javascript-road-trip-part-1", 
														language_id: 6, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Didacto / Learn JavaScript",
														url: "http://javascript.didacto.net/", 
														language_id: 6, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "A re-introduction to JavaScript (JS Tutorial) – MDN (Mozilla Developer Network)
",
														url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/A_re-introduction_to_JavaScript", 
														language_id: 6, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "JavaScript Basics – WebDevEdu/Google",
														url: "https://sites.google.com/site/webdevedu/lessons-1/javascript-basics", 
														language_id: 6, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Harvard University: CS50",
														url: "cs50.harvard.edu", 
														language_id: 3, 
														vote_count: 892)

User.find(rand_user_id).links << Link.create(	title: "Learn C - Free Interactive C Tutorial",
														url: "http://www.learn-c.org/", 
														language_id: 3, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "C Tutorial - Tutorialspoint",
														url: "http://www.tutorialspoint.com/cprogramming/", 
														language_id: 3, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "C Programming Expert",
														url: "http://www.cprogrammingexpert.com/", 
														language_id: 3, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "CProgramming.com",
														url: "http://www.cprogramming.com/", 
														language_id: 3, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "W3 Schools",
														url: "http://www.w3schools.com/html/", 
														language_id: 8, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "HTML Tutorial - EchoEcho.Com",
														url: "http://www.echoecho.com/html.htm", 
														language_id: 8, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Code Plus Tuts+:  HTML",
														url: "http://code.tutsplus.com/posts", 
														language_id: 8, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Learn to Code HTML & CSS",
														url: "http://learn.shayhowe.com/html-css/", 
														language_id: 8, 
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "HTML5 Doctor",
														url: "http://html5doctor.com/designing-a-blog-with-html5/", 
														language_id: 8, 
														vote_count: rand(300))

# CSS Resources

User.find(rand_user_id).links << Link.create(	title: "CSS Tricks",
														url: "http://css-tricks.com/",
														language_id: 9,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "W3 CSS",
														url: "http://www.w3.org/Style/CSS/learning.en.html",
														language_id: 9,
														vote_count: rand(300))


# Python Resources

User.find(rand_user_id).links << Link.create(	title: "Learn Python the Hard Way",
														url: "http://learnpythonthehardway.org/",
														language_id: 2,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Dive Into Python",
														url: "http://www.diveintopython.net/",
														language_id: 2,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Python for Non-Programmers",
														url: "https://wiki.python.org/moin/BeginnersGuide/NonProgrammers",
														language_id: 2,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Python on Codecademy",
														url: "http://www.codecademy.com/tracks/python",
														language_id: 2,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Intro to Computer Science @ Udacity",
														url: "https://www.udacity.com/course/cs101",
														language_id: 2,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "A Byte of Python",
														url: "http://www.swaroopch.com/notes/python/",
														language_id: 2,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Think Python",
														url: "http://www.greenteapress.com/thinkpython/thinkpython.html",
														language_id: 2,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "ALL THE PYTHON DOCS",
														url: "https://docs.python.org/3/",
														language_id: 2,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Python Side Bar",
														url: "http://www.edgewall.org/python-sidebar/",
														language_id: 2,
														vote_count: rand(300))



# Ruby Resources

User.find(rand_user_id).links << Link.create(	title: "Ruby on Rails Tutorial, 3rd ed.",
														url: "https://www.railstutorial.org/book",
														language_id: 5,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Web Programming with Ruby on Rails",
														url: "http://ureddit.com/class/40250/web-programming-with-ruby-on-rails",
														language_id: 5,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Why’s Poignant Guide to Ruby",
														url: "http://mislav.uniqpath.com/poignant-guide/",
														language_id: 5,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Try Ruby",
														url: "http://tryruby.org/levels/1/challenges/0",
														language_id: 5,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Learning Rails",
														url: "http://shop.oreilly.com/product/0636920004745.do",
														language_id: 5,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Ruby Koans",
														url: "http://rubykoans.com/",
														language_id: 5,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Learn to Program",
														url: "https://pine.fm/LearnToProgram/",
														language_id: 5,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "RubyMonk",
														url: "https://rubymonk.com/",
														language_id: 5,
														vote_count: rand(300))

User.find(rand_user_id).links << Link.create(	title: "Beginning Ruby",
														url: "http://peterc.org/beginningruby/",
														language_id: 5,
														vote_count: rand(300))





# END OF LINK SEED







Link.all.each do |link|
	rand(10).times do
		userid = rand_user_id
		Comment.create(user_id: userid, link_id: link.id, text: create_comment, vote_count: rand(200))
	end
end
