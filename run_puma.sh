bundle exec warble compiled runnable war
PUMA_ARGS="-t 32:64 -e production -p 8080" java -server -jar app-full.war -S rake puma
