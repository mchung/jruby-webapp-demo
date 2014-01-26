#!/usr/bin/env rackup
# encoding: utf-8

$stdout.sync = true

require File.expand_path("../config/boot.rb", __FILE__)
run Baseline::App
