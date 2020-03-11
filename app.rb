require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do 
    "#{self.square(params[:number])}"
  end

  def square(number)
    number.to_i ** 2
  end

  get '/say/:number/:phrase' do 
    "#{params[:phrase] * params[:number].to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    output_array = []
    params.each{|key, value|
      output_array.push(value)
    }
    "#{output_array.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      "#{number1 + number2}"
    when 'subtract'
      "#{number1 - number2}"
    when 'multiply'
      "#{number1 * number2}"
    when 'divide'
      "#{number1 / number2}"
    else
      "unsupported"
    end
  end


end