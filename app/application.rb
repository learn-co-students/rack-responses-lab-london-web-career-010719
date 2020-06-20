class Application

  def call(env)
    resp = Rack::Response.new

    hour_now = Time.now.hour
    if hour_now < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
