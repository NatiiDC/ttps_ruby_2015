#HECHO

#a_ul({ perros: 1, gatos: 1, peces: 0})
# => "<ul><li>perros: 1</li><li>gatos: 1</li><li>peces: 0</li></ul>"

def a_ul (h)
	
	cadena = String.new("<ul>")
	h.each {|animal, num| cadena << "<li>#{animal}: #{num}</li>" }
	cadena << "</ul>"
	puts cadena
end

a_ul({ perros: 1, gatos: 1, peces: 0})
