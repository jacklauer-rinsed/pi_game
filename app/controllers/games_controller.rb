class GamesController < ApplicationController
  def index
    # Home page - show intro and instructions
  end

  def play
    @target_length = params[:length]&.to_i || 10
    @digits = PiDigit.to_s(@target_length)
    @user_input = params[:user_input] || ""
    
    if params[:check] && !@user_input.empty?
      @correct = check_input(@user_input, @digits)
      @score = calculate_score(@user_input, @digits) if @correct
    end
    
    # Track high scores in session
    if @correct && @score
      session[:high_scores] ||= {}
      current_high = session[:high_scores][@target_length.to_s].to_i
      session[:high_scores][@target_length.to_s] = @score if @score > current_high
      @high_score = session[:high_scores][@target_length.to_s]
    end
  end
  
  private
  
  def check_input(input, target)
    # Remove spaces from input
    input = input.gsub(/\s+/, "")
    input == target
  end
  
  def calculate_score(input, target)
    # Remove spaces and decimal point for counting digits
    clean_input = input.gsub(/[\s\.]/, "")
    clean_input.length
  end
end
