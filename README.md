# Hotwire.io

The JavaScript Ecosystem for Server-rendered Web-Applications.

## Getting started

## Running locally

1. Fork the repository on Github.

2. Clone it:

        $ git clone git@github.com:your_username/hotwire.io.git 

3. Install dependencies:

        $ cd hotwire.io 
        $ bundle install

4. Create the database, and run the migrations: 
    
        $ rails db:create 
        $ rails db:migrate 

5. You might need to upgrade if your prompted to:

        $ bundle exec vite upgrade

6. You can run the app locally: 

        $ bin/dev

6. The app should be now available at http://localhost:3000/

        http://localhost:3000/


## License

The project is available as open source under the terms of the [MIT License](https://opensource.org/license/mit/).
