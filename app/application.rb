require 'pry'
class Application 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
   if req.path.match(/items/)
     search_term = req.params["item"]
     resp.write search_item(search_term)
   else 
     resp.write "Route not found"
     resp.status = 404
   end
   
    resp.finish
  end
  
  def search_item(search_term)
    Item.all.detect(search_term) do |item|
      binding.pry
      if item.name == search_term 
        return item.price
      end
    end
  end
end 