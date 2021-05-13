class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/test/) 
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json ]]

    elsif req.path == "/followers" 
     return[200, { 'Content-Type' => 'application/json' }, [ Follower.all.to_json]]

    elsif req.path=="/artists"
      return[201, {'Content-Type' => 'application/json'}, [Artist.all.to_json]]

    elsif req.path=="/fans"
      return[201, {'Content-Type' => 'application/json'}, [Fan.all.to_json]]

    elsif req.path=="/concerts"
      return[201, {'Content-Type' => 'application/json'}, [Concert.all.to_json]]

    else
      resp.write "Path Not Found"

    end

    resp.finish
  end

end
