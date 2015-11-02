require 'bundler'
Bundler.require()

# **** Helpers ****
def get_lunchplaces
  File.read('./data/lunchplaces.txt').split(',')
end

def set_new_lunchplace(lunchplace)
  lunchplaces = get_lunchplaces()
  lunchplaces.push(lunchplace)
  File.write('./data/lunchplaces.txt', lunchplaces.join(','))
end

# **** Routes ****
get '/' do
  @lunchplaces = get_lunchplaces()
  erb :index
end

post '/lunchplaces' do
  set_new_lunchplace( params[:lunch_place] )
  redirect '/'
end
