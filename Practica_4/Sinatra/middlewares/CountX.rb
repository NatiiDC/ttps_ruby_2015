class CountX
  def initialize (app)
    @app = app
  end

  def call(env)
    letra = 'o'
    @status, @headers, @body = @app.call(env)
    @headers['X-Xs-Count'] = @body.inject(0) { |count, text| count + text.count(letra) }.to_s
    [@status, @headers, @body]
  end
end
