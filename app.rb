require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    name = params[:name].reverse
    name
  end

  get '/square/:number' do 
    num = params[:number].to_i
    square = (num * num).to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    new_phrase = ""
    num.times do
      new_phrase << params[:phrase]
    end
    new_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    sentence = ""
    params.each do |key, value|
      sentence += value + " "  
    end
    sentence.strip + "."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == "add"
      sum = (num1 + num2).to_s
    elsif params[:operation] == "subtract"
      dif = (num1 - num2).to_s
    elsif params[:operation] == "multiply"
      prod = (num1 * num2).to_s
    elsif params[:operation] == "divide"
      quo = (num1 / num2).to_s
    end
  end
  
end