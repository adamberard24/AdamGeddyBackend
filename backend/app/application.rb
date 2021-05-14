class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    

    # # elsif req.path == "/followers" && req.get?
    # #  return[200, { 'Content-Type' => 'application/json' }, [ Follower.all.to_json]]
    # # elsif req.path.match("/artists/*") && req.get?
    puts req.path
    if req.path =="/artists" && req.post?
      artist_hash=JSON.parse(req.body.read)
      new_friend = Artist.create(artist_hash)
      
      return[201, {'Content-Type' => 'application/json'}, [new_friend.to_json]]

    elsif req.path.match("/artists/./concerts") && req.get?
      arr = req.path.split("/")
      id = arr[2]
      new_pal = Artist.find(id) 
      concert_arr = new_pal.concerts
      return[201, {'Content-Type' => 'application/json'}, [concert_arr.to_json]]



    elsif req.path.match(/artists/) && req.delete?
      id = req.path.split("/artists/").last
      artist = Artist.find(id)
      artist.destroy
      return[200, { 'Content-Type' => 'application/json'}, [artist.to_json]]

    elsif req.path=="/artists" && req.get?
      return[201, {'Content-Type' => 'application/json'}, [Artist.all.to_json]]
    


    elsif req.path=="/fans" && req.get?
      return[201, {'Content-Type' => 'application/json'}, [Fan.all.to_json]]
    
    elsif req.path=="/concerts" && req.get?
      return[201, {'Content-Type' => 'application/json'}, [Concert.all.to_json]]

    else
      resp.write "Path Not Found, ya jerk"

    end

    resp.finish
  end

end
