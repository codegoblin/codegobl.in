Codegobl.in

### `express-boilerplate` instructions: 

### Requirements

- Install node @ nodejs.org
- clone this repo
- change app settings in /config/data/ for the new app

### To start a node server locally

- vanilla server start: `coffee app.coffee`
- with nodemon installed (`npm install -g nodemon`): `nodemon app.coffee`

### To deploy to heroku ([click here](https://devcenter.heroku.com/articles/getting-started-with-nodejs) for further instructions)
*Make sure you've added the correct heroku remote to your /.git/config*
- `git push heroku <the branch you want to deploy>:master`
- or simply `git push heroku master` will deploy your master branch to heroku
