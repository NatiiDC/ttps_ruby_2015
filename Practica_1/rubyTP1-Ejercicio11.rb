#HECHO

# rot13("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!")
# => "¡Ovrairavqbf n yn phefnqn 2015 qr GGCF Bcpvóa Ehol!"

def rot13(str)

	puts str.tr("A-Za-z", "N-ZA-Mn-za-m")

end

rot13("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!")
