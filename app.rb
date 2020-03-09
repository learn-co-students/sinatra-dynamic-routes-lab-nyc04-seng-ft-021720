require_relative 'config/environment'

class App < Sinatra::Base



  get '/reversename/:name' do
    @name_to_be_reversed = params[:name]
    "#{@name_to_be_reversed.reverse}"
    end
    
  get '/square/:number' do
      @number_to_be_squared = params[:number].to_i
      "#{@number_to_be_squared ** 2}"
  end
    
  get '/say/:number/:phrase' do
    
    number = params[:number].to_i
    phrase = params[:phrase].to_s
    newphrase = []
    number.times do
      newphrase << phrase
    end
    "#{newphrase}"
    end
    
 get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end
    
 get '/:operation/:number1/:number2' do

  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      "#{params[:number1].to_i + params[:number2].to_i}"
    when 'subtract'
      "#{(@number1 - @number2)}"
    
    when'multiply'
      "#{(@number1 * @number2)}"
    
    when 'divide'
      "#{(@number1 / @number2)}"
    end
    end
    


end