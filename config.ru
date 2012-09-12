require "rubygems"
require "bundler"
Bundler.require

use Faye::RackAdapter, :mount => '/faye', :timeout => 25
require "./lsrc_http"
run LsrcHttp
