class CrossOutNumbers

  def initialize(app)
    @app = app
  end

  def call(env)
    @status, @headers, @body = @app.call(env)
    # @body.each { | text | text.tr!('1234567890', 'X')}
    [@status, @headers, @body]
  end

end
