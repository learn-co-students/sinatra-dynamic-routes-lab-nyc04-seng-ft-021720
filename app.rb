require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user = params[:name]
    "#{@user.reverse}"
  end

  get '/square/:number' do
    @number = params[:number.to_s]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number.to_s]
    @phrase = params[:phrase]
    "#{@phrase * @number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation.to_s]
    @number1 = params[:number1.to_s]
    @number2 = params[:number2.to_s]
    if @operation == "add"
      "#{@number1.to_i + @number2.to_i}"
    elsif @operation == "subtract"
      "#{@number1.to_i - @number2.to_i}"
    elsif @operation == "multiply"
      "#{@number1.to_i * @number2.to_i}"
    elsif @operation == "divide"
      "#{@number1.to_i / @number2.to_i}"
    end
  end

end