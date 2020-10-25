class Application

    def call(env)
        resp = Rack::Response.new
        time_now = Time.now.strftime("%H").to_i
        if time_now > 12
            resp.write "Good Afternoon"
        else
            resp.write "Good Morning"
        end
        resp.finish
    end
end