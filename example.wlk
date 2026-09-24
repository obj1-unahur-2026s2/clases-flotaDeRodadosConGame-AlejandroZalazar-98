class Corsa{

  const pasajeros = 4
  const velocidadMaxima = 150
  const peso = 1300 
  
  var color

}

class Kwid{

  const color = "azul" 
  
  var tanqueDeGasInstalado 

  method cantidadPasajeros() = if(tanqueDeGasInstalado) 3 else 4

  method velocidadMaxima() = if(tanqueDeGasInstalado) 120 else 110
  
  method peso() = if(tanqueDeGasInstalado) 1350 else 1200

  method sacarTanque() {
    tanqueDeGasInstalado = false
  }

    method ponerTanque() {
    tanqueDeGasInstalado = true
  }
  
}

object trafic {
  
  const color = "blanco"

  var interior = interiorComodo
  method CambiarInterior(uninterior){
    interior = uninterior
  }

  var motor = motorPulenta

  method CambiarMotor(unMotor){
    motor = unMotor
  }

  method capacidad()= interior.capacidad()
  method peso()= 4000 + interior.peso() + motor.peso()
  method velocidadMaxima()= motor.velocidadMaxima()

}

object interiorComodo {

  method capacidad() = 5
  method peso() = 700

}

object interiorPopular {

  method capacidad() = 12
  method peso() = 1000

}

object motorPulenta {

  method velocidadMaxima()=130
  method peso()=800
  
}

object motorBataton{

  method velocidadMaxima()=500
  method peso()=80
  
}

class Dependencia {
  const flota = []

  var cantidadEmpleados

  method agregarVehiculoFlota(nuevoVehiculo) = flota.add(nuevoVehiculo)
  method quitarVehiculoFlota(vehiculo) = flota.remove(vehiculo)
  method pesoTotalFlota(){
    return flota.sum({f => f.peso()})
  }
  method estaBienEquipada(){
    if(flota.size()>3 and flota.all({f=>f.velocidadMaxima() >= 100}))
  }

  method capacidadTotalEnColor(unColor){
    return flota.filter({f=>f.color()=="unColor"}).sum({f=>f.capacidad()})
  }
} 