# Package demo

Warbler.
JRuby.
Jetty.

Build the app. Run the app. Rake your app. Demos Ruby/JVM goodness

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

## Create your executable WAR

```bash
bundle exec rake war
```

## Start the application

```bash
java -server -jar app-full.war
```

## Run your rake tasks

```
java -jar app-full.war -S rake print
```