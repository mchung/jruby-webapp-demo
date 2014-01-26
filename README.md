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

## With Jetty
```bash
bundle exec warble compiled executable war
java -server -jar app-full.war
```

## With Puma
```bash
bundle exec warble compiled runnable war
PUMA_ARGS="-t 32:64 -e production -p 8080" java -server -jar app-full.war -S rake puma
```

## Rake tasks
```
java -jar app-full.war -S rake print
java -jar app-full.war -S rake pry
```