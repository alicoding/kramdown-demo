get '/' do
  erb :index
end

post '/' do
  Kramdown::Document.new(params[:text]).to_html
end