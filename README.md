# README

* Trello Board for this project https://trello.com/b/0BRjOWTm/project-2

* This app was created in ruby on rails with a postgresl back end and a devise gem, it utilizes a three way join table

* To get this app on your local machine run these commands in your cli :

git clone git@github.com:Philocoder93/smart_search.git
cd smart_search
rails db:drop db:create db:migrate
rails s

then go to localhost:3000 to see the app in action

* User Stories

1. As a User I need to be able to input documents into the app in order to view my documents.
2. As a User I need to be able to password protect my account in order to protect my privacy.
3. As a User I need to be able to search for documents in db in order to find what I'm looking for.
4. As a User I need the search to remember what I've searched for in order to for me to better find what I'm looking for.
5. As a User I need to be able to look over my search history in order to figure out what I need to search for.
6. As a User I need to be able to set the weights of the various search terms in order to find the items most salient to my search.
7. As a User I need the machine to remember my most looked at articles and put them higher in the search returns in order to find all and only what I'm looking for.
8. As a User I need the machine to remember my most searched search terms and use them fill in the search when not every search term is filled in order to find all and only data that is salient to my search.
9. As a User I need to be able to turn off the smart features of the search in order to find things other than the ones that I normally look for and discover new things.

* Features not yet implemented:
1. Search isn't actually 'smart' yet, need to implement more precise search options
2. Need to implement learning functionality into search
3. Need to clean up the front end a bit

* approach taken: see pseudo

* features: full crud for posts, basic search functionality for posts.
