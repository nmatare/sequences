class GuessesController < ApplicationController

	def index
		
		# params = {'first_numer' => "4"}
		g = Guess.new
		g.first_num = params["first_number"]
		g.second_num = params["second_number"]
		g.third_num = params["third_number"]
		g.save
		
		@list = Guess.all

		render("index.html.erb")

	end

	def answer
		# params = {'rule' => "Hi there"}
		@user_answer = params["rule"]

		render("answer.html.erb")
	end

end