class MoL
  def call(env)
    if Random.rand(1..42) == 42
      [200, {}, ["42"]]
    else
      [404, {}, ["error"]]
    end
  end
end
