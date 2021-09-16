# README
## Health Track

This is simple API developed with ruby on rails. It provides back end points to a front end application that allow users to tack their health daily, espcially, their blood pressure and blood glucose. THe back end uses a postgresql database to store users data and health parameters (blood pressure and blood glucose).

### Tools
- Ruby
- Ruby on Rails
- Rspec
- Rubocop
- Heroku
- rack-corse
- Postgresql
- Active model serializer

### Base url
 The base url to the API is 'https://fierce-garden-46227.herokuapp.com/api'

 ## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Ruby: 3.0.0
- Rails: 6.1.3
- PostgreSQL. Versions 9.3 and up are supported

### Set Up

- Go to the "Code" section of this repository and press the green button that says "Code". Copy the URL or the SSH key.
- Go to the terminal and enter:
```
git clone URL/SSH key
```
- If you don't have git, you can download this project and unzip it.
- Change directory into the folder the application is saved.
- To install the gems, run:
```
bundle install
```
- Install yarn (you need to have npm installed) by running:

```
npm install --global yarn
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.