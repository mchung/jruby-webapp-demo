# Package demo

Experimenting with various ways of bundling a JRuby app

- Warbler/Jetty
- Puma

## Setup your local Ruby environment
```bash
rvm --create ruby-1.9.3-p484@demo
```

Note: You may also use jruby as your local environment.
```bash
rvm --create jruby-1.7.10@demo
```

## Install dependencies
```bash
bundle install
```

## With Jetty via warble
```bash
bundle exec warble compiled executable war
java -server -jar app-full.war

# Visit http://localhost:8080
```

## With Puma
```bash
bundle exec warble compiled runnable war
PUMA_ARGS="-t 32:64 -e production -p 8080" java -server -jar app-full.war -S rake puma

# Visit http://localhost:8080
```

## With Jetty via Jetty 9
```bash
# Download jetty-9.
# export JETTY_HOME=/home/mchung/sdk/jetty
bundle exec warble compiled runnable war
cp app-full.war base/webapps/root.war
java -jar $JETTY_HOME/start.jar jetty.base=base

# Visit http://localhost:8080
```

## Rake tasks
```
java -jar app-full.war -S rake print
java -jar app-full.war -S rake pry
```