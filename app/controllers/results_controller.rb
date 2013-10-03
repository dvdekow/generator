class ResultsController < ApplicationController
	
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
	 @results = Result.new
	 @branch = Branch.new
	 @neo = Neography::Rest.new
	end

	def makeRelations
    	/check is user_node exist?/
		  /if not_exist? create new user_node
           check jika telah melihat item lain
             jika ada maka buat node melihat yang lain
           check jika telah membeli barang lain
             jika ada maka buat node beli yang lain
           check jika pernah memberi rating
             jika pernah memberi rating pada barang
           check apakah ia penjual barang
             jika pernah check rekomendasinya
           
		  	/
			/check is item_node exist?/
              /if not_exist? create new item_node/
              /create relations *jika sudah ada maka ditambah ke ...*/
              /mungkin didalam relasi ditambahkan juga atribut dia sudah pernah membeli berapa kali/
          /else/
            /check is item_node exist?/
              /if not_exist? create new item_node/
              /else/
              /create relations *jika sudah ada maka ditambah ke ...*/
              /mungkin didalam relasi ditambahkan juga atribut dia sudah pernah membeli berapa kali/
	end


	def generate
		/executing query with selected algorhytm/
		//
		
	end
end
