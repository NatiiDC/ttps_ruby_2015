require "bundler"
Bundler.require

set(:rand_number) { |num|
  actual = 42
  condition { num == actual } }

get "/", :rand_number => Random.rand(1..42) do
  [200, {}, "Joya"]
end

get "/" do
  [404, {}, "Todo mal :("]
end
