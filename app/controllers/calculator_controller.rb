class CalculatorController < ApplicationController
	skip_before_action :verify_authenticity_token

	def index
		# Default values
		@default_options = ["A", 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
	end

	# Send the selected values to model and get the data for the charts
	def set_options

		choices = params[:choices_str].split("")
		choices.each_with_index do |choice, index|
			if not choice.in?(["A","B","C","D"])
				choices[index] = choice.to_i
			else
				choices[index] = choice
			end
		end

		options = []
		choices.each_with_index do |choice, index|
			options.push({:choicelevel => choice, :choicenumber => index})
		end

		data = Calculator.set_values(choices)

		render json: {data: data}

	end

end