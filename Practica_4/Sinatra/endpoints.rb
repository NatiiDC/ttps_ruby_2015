require "bundler"
Bundler.require

helpers do

end

get '/' do

# body = ['<h1> Opciones </h1>
# <ul>
# 	<li>"/mcm/:a/:b  calcula y presenta el mínimo común múltiplo de los valores numéricos :a y :b" </li>
# 	<li>"/mcd/:a/:b  calcula y presenta el máximo común divisor de los valores numéricos :a y :b" </li>
# 	<li>"/sum/*  calcula la sumatoria de todos los valores numéricos recibidos como parámetro en el splat" </li>
# 	<li>"/even/*  presenta la cantidad de números pares que hay entre los valores
# 		numéricos recibidos como parámetro en el splat"</li>
# 	<li>"/random  presenta un número al azar "</li>
# 	<li>"/random/:lower/:upper  presenta un número al azar entre  :lower  y  :upper  (dos valores numéricos)"</li>
# </ul>'];
# 	[200, {}, body]
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
