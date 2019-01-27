
class Application
  def call(env)
    resp = Rack::Response.new
    current_time_string = Time.now.to_s
    current_hour = current_time_string[11..12]
    current_hour_integer = current_hour.to_i
    if current_hour_integer > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

end
