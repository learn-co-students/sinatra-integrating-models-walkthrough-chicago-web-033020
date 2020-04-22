require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
# Cpmtroller
# get '/' do, which renders the index.erb page.
# post '/' do, which receives the form data through params and renders the results page.

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :results
  end

end
