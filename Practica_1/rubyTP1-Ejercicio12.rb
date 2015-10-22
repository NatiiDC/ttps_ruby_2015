#HECHO

#rot("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!", 13)
# => "¡Ovrairavqbf n yn phefnqn 2015 qr GGCF Bcpvóa Ehol!"

def rot (str, num)
	am = str
	num.times do am = am.tr("A-Za-z", "B-ZAb-za") end
#	num.times { am = am.tr("A-Za-z", "B-ZAb-za") }
	am
end

puts rot("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!", 12)
