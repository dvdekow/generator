class RecommendationController < ApplicationController

	Neography.configure do |config|
	  config.protocol       = "http://"
	  config.server         = "localhost"
	  config.port           = 7474
	  config.directory      = ""
	  config.cypher_path    = "/cypher"
	  config.gremlin_path   = "/ext/GremlinPlugin/graphdb/execute_script"
	  config.log_file       = "neography.log"
	  config.log_enabled    = false
	  config.max_threads    = 20
	  config.authentication = nil
	  config.username       = nil
	  config.password       = nil
	  config.parser         = MultiJsonParser
	end

	@neo = Neography::Rest.new

	def index
      /respon_with(Recommendation.for(current_user))/
      @rec = Recommendation.new
	end

	def new

	end

	def create

	end

	def generate
      @id_product = params[:product_id]
	end
end
