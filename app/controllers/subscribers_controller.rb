class SubscribersController < ApplicationController
	def new
		@subscriber = Subscriber.all
	end
	def create
		@subscriber = Subscriber.new(subscriber_params)
		if @subscriber.save
			redirect_to root_path, notice: 'Thank you for subscribing.'
		else
			redirect_to root_path, notice: 'An error occured.'
		end
	end

	private

	def subscriber_params
		params.require(:subscriber).permit(:email, :name)
	end
end
