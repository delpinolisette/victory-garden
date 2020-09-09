Build Plan for VictoryGarden.md

### General Setup

1. make sure that the model makes sense
2. generate a user model scaffolded with id:int leaves:string trees:references
    3. ran: `rails g scaffold User trees:references username:string password_hash:string`
3. generate a leaf model with id:int title:string body:string
4. generate tree model with id: int users:references leaves: references?
5. create a join table called connections with..... references to the hasmany thing, trees and leaves 

---
 
7. after generation, set up associations in the model files .rb i think 
8. run CRUD methods to test in rails c 
9. see if you can set up primitive homepage view to test. done. 

---

### Views

1. what is the home page situation? make sure you route to it. 


### Validations and Custom methods
1. i got nothing yet, i will add validations towards the end of the project

### Login Page
1. gonna need to implement a loginform for user. 
2. after this is implemented, all navigation should be redirected to the login page. 
3. for passwords, might need to encrypt but just use plaintext first. 

### feed
1. after logging in, you can view everyone but should only be able to create new tree if you are the person logged in....
2. give the tree a name, etc...
3. then after you are in the tree, going to home should show you leaves of all kinds, which you can add to your tree. 
4. going to a tree show page should display all leaves that the tree has
5. and going to user show page should display all the trees that they have created 


process:

1. updated the webpacker but i ended up commenting it out because it gave me errors
2. now i want to edit the user show page to make sure you can create a tree. 
3. after a tree is created it has a creator and should show up on the users show page. 
3. want to make sure that the tree has a show page that shows all its leaves. 
4. then i need to solve the issue of where to put the leaves?
5. want to fix upload file issue for leaves. 
    - where is the instructor video ?




### Aesthetics

1. download nice sample images of people growing indoors
2. maybe make it look stylized like a cartoon could be cute!

