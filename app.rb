require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    reversed_name = params[:name].reverse
    "#{reversed_name}"
  end

  get '/square/:number' do
    squared_num = ((params[:number].to_i)**2).to_s
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    word = params[:phrase]
    n.times.map do |i|
      "#{word}\n"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    sentence = params[:word1]+" "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]+"."
            "#{sentence}"""
  end

  get '/:operation/:number1/:number2' do
    if params[:operation]=='add'
      sum = params[:number1].to_i+params[:number2].to_i
      "#{sum}"
    elsif params[:operation]=='subtract'
      diff = params[:number1].to_i-params[:number2].to_i
      "#{diff}"
    elsif params[:operation]=='multiply'
      product = params[:number1].to_i*params[:number2].to_i
      "#{product}"
    else
      div = params[:number1].to_i/params[:number2].to_i
      "#{div}"
    end
  end

end