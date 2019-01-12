require 'pry'
class Application 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
   if req.path.match(/items/)
    search_item = req.path.split("/items/").last 
    item = @@
   else 
     resp.write "Route not found"
     resp.status = 404
   end
   
    resp.finish
  end
end 
if req.path.match(/songs/)
 
      song_title = req.path.split("/songs/").last #turn /songs/Sorry into Sorry
      song = @@songs.find{|s| s.title == song_title}
 
      resp.write song.artist
    end