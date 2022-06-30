# Crear la clase baraja en el archivo barajas.rb con el atributo cartas, el cual será un arreglo. (1 Punto)
# Al crear una baraja (constructor) se deben generar todas las combinaciones de números y pinta y guardarse dentro del arreglo cartas.
# Crear el método barajar que debe desordenar el arreglo de cartas Tip: Utilizar .shuffle.
# Crear el método sacar que permita retirar la primera carta de la baraja Tip: Utilizar .pop. (1 Punto)
# Crear el método repartir mano que devolverá un arreglo con las primeras 5 cartas de la baraja. (1 Punto)


require_relative 'carta'

# Creando la clase Baraja
class Baraja
    attr_accessor :cartas
    def initialize(carta)
        @cartas = []
        # Generando las combinaciones de numeros y pintas y se guardan en @cartas
        carta.numero.each do |i|
        carta.pinta.each do |j|
            @cartas << i.to_s + j
        end
        end
    end

    def barajar
        @cartas.shuffle
    end 

    def sacar
        @cartas.pop
    end

    def repartir_mano
        #devolver array con las cinco primeras cartas de la baraja
        @cartas[0..4]
    end

end

# Se definen 2 arrays con los números del 1 al 13 y otro con las letras de cada pinta
numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
pintas = ['C', 'D', 'E', 'T']

# Instanciando la clase Carta
carta1 = Carta.new(numeros, pintas)

# Instanciando la clase Baraja
baraja1 = Baraja.new(carta1)

# Testeando los métodos de la clase
puts "-----------------------"
puts "Método barajar"
print baraja1.barajar
puts
puts "-----------------------"

puts "Método sacar"
print baraja1.sacar
puts
puts "-----------------------"

puts "Método repatir_mano"
print baraja1.repartir_mano
puts
puts "-----------------------"