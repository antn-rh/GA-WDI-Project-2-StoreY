# GAproject2-StoreY

### About the project 

The idea for StoreY was inspired by popular web apps such as Pinterest, Instagram, and Tumblr with the goal of creating a space for users to store their memories (photos, videos, blog posts, etc.) in a single place where they can be shared with other users. StoreY provides a platform for users to see, like, and comment on what others are/have been up to throughout their week. 

### MVP 

The minimum viable product for this web app will include a homepage, ability to navigate between profiles and stories, and sign up options. Users will be able to create a personal account in which they can create stories composed of pictures, videos, or text or their choosing. They will also be able to view other users' stories and have the option of liking and commenting on stories and/or specific posts.

### Technologies Used

1. Ruby on Rails
2. Bootstrap
3. HTML5
4. CSS3
5. Paperclip with Amazon Web Services
6. Heroku

### Approach Taken

I started off the the User model and created a controller, coded RESTful routes, view templates. I also worked on user authentication and authorization. Afterwards, I worked on models for stories and pins, and coded controllers, routes, and view templates. I used Paperclip and Amazon Web Services to implement the functionality to add images to my web app. After creating all models and their necessary components, I used Bootstrap to and SCSS to style my web app. I used Heroku to deploy my web app. 

## Installation Instructions 

1. Visit https://github.com/antoniolrhee/GAproject2-StoreY and either clone or download the repo
2. User your terminal to go to the directory containing the application files 
3. Type 'bundle install' into your terminal
4. Type 'run rake db:create' and 'run rake db:migrate' into your terminal
5. In either the current window or a new window under the same directory, type 'rails s' into your terminal
6. User your web browser and navigate to 'localhost:3000'

Heroku link: https://storeyproject2.herokuapp.com/

### Unsolved Problems

The majority of my unsolved problems lie with styling. There are specific instances where a page does not load as it should. However, refershing the web page fixes the issue. 

---
### Trello Board

[Link to Trello](https://trello.com/b/KsRG9tg4/project-2-storey)

---
### Wireframes & ERD

![](http://imgur.com/SeCCOCc.png)
![](http://imgur.com/WH5c7Ep.png)
