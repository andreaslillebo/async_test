module RackEventsCableSkip
  def call(env)
    path = env["PATH_INFO"]
    if path == "/cable"
      @app.call(env)
    else
      super
    end
  end
end

if defined?(Rack::Events) && !(Rack::Events < RackEventsCableSkip)
  Rack::Events.prepend(RackEventsCableSkip)
end
