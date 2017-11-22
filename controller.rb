require ('sinatra')
require ('sinatra/reloader')
require_relative('models/gamelogic')

get '/game/:player1/:player2' do
  game = Game.new( params[:player1], params[:player2])
  @winner = "#{game.play}"
  erb( :result )
end

get '/' do
  erb (:home)
end

get '/about' do
  erb (:about)
end



# get '/add/:num1/:num2' do
#   calculator = Calculator.new( params[:num1].to_i, params[:num2].to_i)
#   @calculation =  "#{calculator.add}"
#   erb( :result )
# end
