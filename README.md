# WebApp
A simple Sinatra WebApp example

### Run it from source with pre-requisites
- Ruby 3.1.0
- `gem install bundler`

```
cd src
bundle install
bundle exec rackup --host 0.0.0.0 --port 4567
```

### Build and run as a container:
#### Build
```
docker build --tag app .
```
#### Run
```
docker run -d -p 3001:3001 -e PORT=3001 app:latest
```
Alternatively, edit the docker compose configuration to your liking and `docker compose up`.
