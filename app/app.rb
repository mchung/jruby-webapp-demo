require "sinatra/base"
require "json"

module Baseline
  class App < Sinatra::Base
    before do
      content_type :json
    end

    get "/" do
      env = ENV["RACK_ENV"]
      {"message" => "[#{env}] Sinatra on Jetty"}.to_json
    end
  end
end
