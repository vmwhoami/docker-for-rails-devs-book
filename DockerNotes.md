# README

##  Add permissions to the app
 `sudo chown -R $USER:$USER .`

## Delete this
`tmp/pids/server.pid `

<!-- Method to run rails server -->
## Run a container
`docker-compose run web /bin/sh`

<!-- docker run -p 3000:3000 docker-rails:v1 bin/rails s -b 0.0.0.0 -->
<!--  We could craft a really long, ugly docker run
that executes the instructions one after another. However, that’s going to be hard
to comprehend -->

Run the ruby image 

`docker run -i -t --rm -v ${PWD}:/usr/src/app ruby:3.0 bash`

Install rails

`gem install rails`

Create a new app 
`rails new app --skip-bundle --skip-test`