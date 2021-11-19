# Recipe App

![Microverse](https://img.shields.io/badge/Microverse-blueviolet)

![image](https://user-images.githubusercontent.com/75126481/142487231-37306625-96c9-4c8f-96c2-a1cb0bb97b4c.png)


The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

## Built With

- Ruby on Rails
- PostgreSQL
- Bulma CSS

## Live Demo

[Live Demo](https://hiro-recipe-app.herokuapp.com/users/sign_in)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/)
- [Rails](https://gorails.com/)

### Setup

- Make sure you have Ruby on Rails set up properly on your computer
- Clone or download this repo on your machine
- Enter project directory

### Install

```sh
bundle install
```

### Database

```sh
# Create user
sudo -u postgres createuser recipe_app -s

# Create the database
rails db:create

## Apply migration
rails db:migrate

# Load the schema
rails db:schema:load
```

### Run

```sh
rails s
```

### Test

```sh
rails spec
```

### Troubleshoot

```sh
### Rspec failing
RAILS_ENV=test rake db:reset
```

```sh
### New Scaffold
rails g scaffold_controller model
```

```sh
### Undo migration
rake db:migrate VERSION=0
```
## Authors

👤 **Aganze Mataba Henri**

- GitHub: [@hiromataba](https://github.com/hiromataba)
- Twitter: [@twitterhandle](https://twitter.com/MatabaHiro)
- LinkedIn: [Hiro Mataba](https://www.linkedin.com/in/hiro-mataba-1bb910209/)

👤 **NGANULO RUSHANIKA Moise**

- GitHub: [@githubhandle](https://github.com/moise10r)
- Twitter: [@twitterhandle](https://twitter.com/MRushanika)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/nganulo-rushanika-mo%C3%AFse-626139197/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse

## License

[MIT](./LICENSE)
