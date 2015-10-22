#mirar

#notacion_hexadecimal([0, 128, 255])
# => '#0080FF'
#notacion_entera([0, 128, 255])
# => 16744448

def notacion_hexadecimal (rgb)
	#digHex = "#"
	#USAR MAP, LEER
	"#" + rgb.map { |elem| elem.to_s(16) }.join
	rgb.inject('#'){|base, elem| base << elem.to_s(16) }}
	#rgb.each { | dig | digHex << dig.to_s(16) }
	#digHex
end


def notacion_entera (rgb)
	digDec = ""	
	digDec = String.new("")
	ind = 0
#RECHACER red + green*256 + blue*256*256
	rgb.each { | dig | 
		digDec << ((dig)*(256**ind)).to_s
		ind=ind+1 }
	digDec

end

puts notacion_hexadecimal([0, 128, 255])
puts notacion_entera([0, 128, 255])
