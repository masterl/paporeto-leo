#require 'rufus/scheduler'
#scheduler = Rufus::Scheduler.start_new
#
#scheduler.every '10m' do
#  require "net/http"
#  require "uri"
#  
#  url1 = 'http://startae.com.br'
#  Net::HTTP.get_response(URI.parse(url1))
#end