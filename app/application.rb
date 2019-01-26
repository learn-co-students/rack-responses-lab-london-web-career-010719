#require "pry"

class Application
    def call(env)
        resp = Rack::Response.new
        condition_time = Time.new(2002, 10, 31, 12, 0, 0)
        condition_time = condition_time.strftime("%H:%M")
        now_time = Time.now.strftime("%H:%M")
        if now_time < condition_time
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
    end 
end
        
  