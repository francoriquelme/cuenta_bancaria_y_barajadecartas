# Crear las clases Usuario y CuentaBancaria. (1 Punto)
# Crear el constructor de la clase CuentaBancaria que reciba el nombre del banco, el número de cuenta y el saldo (el saldo por defecto será cero). (1 Punto)
# Crear el método transferir en la clase Cuenta que reciba un monto y otra cuenta. Este método restará del saldo actual el monto y aumentará el saldo de la otra cuenta en el mismo monto. (1 Punto)
# Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una cuenta a la otra.
# Crear el constructor de Usuario que reciba el nombre del usuario y un arreglo con al menos 1 cuenta bancaria. (1 Punto)
# Crear el método saldo total que devuelva la suma de todos los saldos del usuario. (1 Punto)

# Creando la clase CuentaBancaria
class CuentaBancaria
    attr_accessor :saldo
    def initialize (banco, numero_de_cuenta, saldo = 0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
        end
        # Método que transfiere un monto a otra_cuenta
        def transferir (monto, otra_cuenta)
        @saldo -= monto
        otra_cuenta.saldo += monto
        end
end
    
    # Se crean dos instancias de la clase CuentaBancaria
    cuenta1 = CuentaBancaria.new("santander", "123", 5000)
    cuenta2 = CuentaBancaria.new("itau", "456")
    
    # Se muestran los saldos antes de efectuar la transferencia
    puts "---------------------------------"
    puts "Saldos antes de la transferencia"
    puts "Saldo cuenta1: #{cuenta1.saldo}"
    puts "Saldo cuenta2: #{cuenta2.saldo}"
    puts "---------------------------------"
    
    # Se realiza la transferencia hacia la otra_cuenta
    cuenta1.transferir(5000, cuenta2)
    
    # Se muestran los saldos luego de efectuada la transferencia
    puts "Saldos post transferencia"
    puts "Saldo cuenta1: #{cuenta1.saldo}"
    puts "Saldo cuenta2: #{cuenta2.saldo}"
    puts "---------------------------------"
    
    # Creando la clase Usuario
    class Usuario
        attr_accessor :nombre, :cuentas
        def initialize(nombre, cuenta)
        @nombre = nombre
        @cuentas = []
        @cuentas.push cuenta
        @array_saldos
        end
        # El método saldo_total recorre el arrelgo de @cuentas y retorna un nuevo arreglo con los saldos de cada cuenta
        def saldo_total
        @array_saldos = @cuentas.map do |e|
            e.saldo
        end
        @array_saldos.sum
        end
end
    
    # Creando una instancia de la clase Usuario y se le asigna una sola cuenta
    usuario1= Usuario.new("Franco Riquelme", cuenta1)
    
    # Agregando una nueva cuenta a la instancia usuario1
    usuario1.cuentas.push cuenta2
    
    # Mostrando el resultado de la suma
    puts "La suma del saldo de las cuentas de #{usuario1.nombre} es: #{usuario1.saldo_total}"