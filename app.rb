require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'kramdown'

get '/' do
  erb :index
end

post '/' do
  Kramdown::Document.new(params[:text]).to_html
end