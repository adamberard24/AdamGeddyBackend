class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/test/) 
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json ]]

    # elsif req.path == "/followers" && req.get?
    #  return[200, { 'Content-Type' => 'application/json' }, [ Follower.all.to_json]]
    # elsif req.path.match("/artists/*") && req.get?
    
    elsif req.path =="/artists" && req.post?
      artist_hash=req.body.read
      # new_friend = Artist.create(artist_hash)
      binding.pry
      # return[201, {'Content-Type' => 'application/json'}, [new_friend.to_json]]

    elsif req.path=="/artists" && req.get?
      return[201, {'Content-Type' => 'application/json'}, [Artist.all.to_json]]

    elsif req.path=="/fans" && req.get?
      return[201, {'Content-Type' => 'application/json'}, [Fan.all.to_json]]

    elsif req.path=="/concerts" && req.get?
      return[201, {'Content-Type' => 'application/json'}, [Concert.all.to_json]]

    else
      resp.write "Path Not Found"

    end

    resp.finish
  end

end
