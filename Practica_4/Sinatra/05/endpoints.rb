Bundler.require

require_relative "../middlewares/CountX"
require_relative "../middlewares/CrossOutNumbers"

use CrossOutNumbers
use CountX

get '/' do

  body = []
  Sinatra::Application.each_route do |route|
    body.push("#{route.verb} #{route.path}<br>")
  end
  [200, {}, body]

end

get "/mcm/:a/:b" do |a, b|
	body = ["Minimo comun multiplo de #{a} y #{b} es: " + (a.to_i.lcm(b.to_i)).to_s]
	[ 200, {}, body ]
end

get "/mcd/:a/:b" do |a, b|
	body = ["Maximo comun divisor de #{a} y #{b} es:" + (a.to_i.gcd(b.to_i)).to_s ]
	[ 200, {}, body ]
end

get "/sum/*" do |args|
	body = ["La suma de todos los numeros pasados es: " + args.split("/").inject(0) { |sum, num| sum + num.to_i}.to_s]
	[ 200, {}, body ]
end

get "/even/*" do |args|
	body = ["Son " + args.split("/").select { |num|  num.to_i.even? }.size.to_s + " n&uacute;meros pares"]
	[ 200, {}, body ]
end

get "/random" do
	[ 200, {}, [Random.rand(1000).to_s] ]
end

get "/random/:lower/:upper" do |lo, up|
	[ 200, {}, [Random.rand((lo.to_i)..(up.to_i)).to_s]]
end
