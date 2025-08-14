module RackEventsCableSkip
  def call(env)
    path = env["PATH_INFO"]
    if path == "/cable" || (path && path.start_with?("/cable/"))
      @app.call(env)
    else
      super
    end
  end
end

if defined?(Rack::Events) && !(Rack::Events < RackEventsCableSkip)
  Rack::Events.prepend(RackEventsCableSkip)
end
