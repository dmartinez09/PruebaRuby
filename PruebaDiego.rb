		#Prueba 1 Ruby
		#Menu de 4 opciones 
		def option
			print "__________________________________"
			puts "****MENU****"
			puts "1) Generar archivo con promedios"
			puts "2) Inasistencias totales"
			puts "3) Alumnos que aprobaron"
			puts "4) Salir"
			print "___________________________________\n\n"
			puts "Debe ingresar una opcion: "

			opcion = gets.chomp.to_i
			return opcion
			end



#metodo que recibe la nota necesarioa para la aprobacion
		def notaminima(nota = 5)
			data = ""
			array = []
			contadornota = 0
			file = File.open("promediosAlumnos.csv", "r")
			contenido = file.readlines()

			#File.open("promedios.csv", "r"){|file|
			#	data = file.readlines
			#}

			contenido.each do |i|
				arreglo = i.split(",")
				#contadornota = contadornota + arreglo.to_i
				#if ret[1].to_i > 5
				array.push(arreglo[0]) if arreglo[1].to_i >= nota
			#end
		end
		return array
		end


		continuar = true
		system ("clear")


		while continuar
			case option
				
#ejercio1
			when 1
			data = ""	
			File.open("notas.csv", "r"){|file| 
				data = file.readlines
			}
			data.each do |i|
				contador = 0
				tot = 0
				promedios = 0
				array = i.split (",")
				array.each do |x|
					if x.to_i !=0
						contador = contador + 1
						tot = tot + x.to_i
					end
				end
			promedios = tot.to_f/contador if contador !=0
			system ("touch promediosAlumnos.csv")
			File.open("promediosAlumnos.csv","a"){|file| file.puts"#{array[0]}. #{promedios}"}
			end
			puts ("Archivo generdo correctamente, presione alguna tecla para volver al menu")
			gets
			system("clear")
			#mostras inasistencia por pantalla
			when 2
				data = ""
				File.open("notas.csv", "r"){|file| 
					data = file.readlines
				}
				data.each do |i| 
					alumno = ""
					contador = 0
					array = i.split(",")
					array.each do |x|
						contador+=1 if x==" A"
						alumno = array[0]
					end
					puts "el alumno es #{alumno} y su inasistencia total es #{contador}"
				end
				puts ("Presione alguna tecla para volver al menu")
				gets
				system("clear")

				when 3
				puts ("los alumnos aprobados son: 3 ")
				#@notaminima = aprobados
				
				

				#array = i
				#puts ("los alumnos aprobados son: #{i}")
				#notaminima.each{|i| puts i} 

				puts ("Presione alguna tecla para volver al menu")
				gets
			
			when 4
			continue = false
			break
		else
			
			puts "intentelo nuevamente"


			end
		end 



