# needtacos

Explanations of the technologies used, the approach taken, installation instructions, unsolved problems, etc.

## Technologies used
- Rails, Ruby, JavaScript, HTML, CSS

## Approach
I approached this project as a fun way to find tacos around DC. I knew I wanted to have three models, neighborhoods, restaurants and tacos. Within those models I wanted CRUD functionality, other than neighborhoods which intentionally does not have destroy functionality. I also wanted users of my app to be able to create accounts and then use those accounts to favorite their favorite restaurants and tacos and give them the ability to sign out and sign back in and still see those favorites.  

## Unsolved Problems
-  A big problem that was discovered only recently, is that once a second user creates an account, they are seeing what's been favorited by the initial user. If they want to remove that favorite, they are faced with an error.
