class Api::V1::ProjectsController < Api::V1::BaseController
	def index
	  @rec = Recommendation.new

      /respond_with(recommendation.all)/
	end

	def generate

	end
end