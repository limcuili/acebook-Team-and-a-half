# AceBook
### A Facebook Clone
**Specifications**: Clone Facebook using Ruby on Rails (note that no one in the team has had any prior experience in Rails)  

*Team Members*: [Lim Cui Li](https://github.com/limcuili), [Marek Schmidt](https://github.com/Mschmidt19), [Kirt Singh](https://github.com/kirtimansingh93), [Farah Jabri](https://github.com/fabjab86), [Steph Fashagba](https://github.com/stephfash), [Evie Kim](https://github.com/Eviekim)  
*Timeframe*: 9 days over two weeks  
*Frameworks*: Ruby on Rails  
*Linters/Tests/Coverage*: RuboCop, Travis, RSpec, SimpleCov  
*Deployment*: Heroku  
*Wireframe*: Adobe XD  


[![Build Status](https://travis-ci.org/fabjab86/acebook-Team-and-a-half.svg?branch=master)](https://travis-ci.org/fabjab86/acebook-Team-and-a-half)

You can find the engineering project outline <a href="https://github.com/makersacademy/course/tree/master/engineering_projects/rails">here</a>

The card wall is <a href="https://trello.com/b/ArBRnnAK/acebook">here</a>

Our project is deployed on Heroku <a href ="https://murmuring-earth-81334.herokuapp.com/">here</a>


## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

## My Reflections
Since none of us have any experience in Rails, the first few days consisted of us going through some tutorials on CodeAcademy to get a grasp on simple syntax and capabilities of Rails. It was here that we realised that Rails has an in-built database.  
From our commit history, it is clear that I did not contribute very much in the first week beacuse I felt a little bit demotivated by a lack of direction as to what I should be working on. Pretty much spent all of the first 4 days on wireframe, CSS, and research. I expressed this to the team in standups and retros, leading to a much more productive second week.

Learnt: Once I feel like I do not know my direction, I should express it ASAP before I get demotivated.  

### My contributions
- Initial wireframs (paired with Steph)  
- Able to post text and it shows up in the posts page. (paired with Kirt)  
- Able to like/unlike, where users are only able to like each post once. (solo)  
- Clicking on post user's name in the posts page redirect to user profiles.  (solo)  
- Quite a bit of branch merging.  

## User Stories
Key:  
:white_check_mark: : Complete and deployed  
:soon: : Finished, under review  
:construction: : In progress  
:x: Not started yet  


:white_check_mark:
```
[MVP]
As a user of the web,  
So that I can enjoy Acebook,  
I would like to be able to sign up.
```

:white_check_mark:
```
[MVP]
As a user of Acebook,  
So that I can accumulate a profile,  
I would like to be able to log in to my existing account.
```

:white_check_mark:
```
[MVP]
As a user of Acebook,  
So that I can express myself,  
I would like to be able to post.
```
:white_check_mark:

```
[MVP]
As a user of Acebook,
So that I can tell when I submitted a post,  
I would like each post to show the date posted.
```

:white_check_mark:
```
[MVP]
As a user of Acebook,  
So that I can see my most recent posts,  
I would like my posts to be seen in reverse chronological order.
```

:white_check_mark:
```
As a user of Acebook,
So that I can change previous posts,
I would like to be able to update and delete my posts.
```

:white_check_mark:
```
[MVP]
As a user of Acebook,
So that I can participate in the conversation,
I would like to be able to comment on a post.
```

:white_check_mark:
```
As a user of Acebook,  
So that I can manage my online presence,  
I would like a profile page with my picture and my posts.
```

:white_check_mark:
```
As a user,  
So that I can show that I enjoyed a post,  
I would like to be able to like a post.
```

:white_check_mark:
```
As a user of Acebook,  
So that I know how many people enjoyed my post,  
I would like to be able to see how many likes there are on a post.
```

:white_check_mark:
```
As a user of Acebook,  
So that I can see what other people have posted,  
I would like to be able to see other people's profiles.
```

## How to contribute to this project
See [CONTRIBUTING.md](CONTRIBUTING.md)
