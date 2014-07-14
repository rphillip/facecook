class Recipe
  include HTTParty 
 
  base_uri 'recipepuppy.com/api/?q=' 
  #have onlyImage as set to 1
default_params :output => 'json', :onlyImages => '1'
  format :json 
    def self.for(item) 
      #replace all the places with + for mulitword queries
      term=CGI.escape(item)
      get("#{term}")
    end 

end