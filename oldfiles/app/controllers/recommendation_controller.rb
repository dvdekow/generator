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

	def index
      /respon_with(Recommendation.for(current_user))/
      @rec = Recommendation.new
	end

	def new

	end
 
	def create
      recommendation = Recommendation.create(params[:recommendation])
        if recommendation.valid?
          respond_with(recommendation, :location => api_v1_recommendation_path(recommendation))
        else
          respond_with(recommendation)
        end
	end

	def generate
      @id_product = params[:recommendation][:product_id]

      @neo = Neography::Rest.new

      node1 = @neo.create_node("age" => 31, "name" => "Max")
	  node2 = @neo.create_node("age" => 33, "name" => "Roel")
      /take generator algoritma here/
	end
end
