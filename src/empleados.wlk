object gimenez {
    // la linea que sigue es equivalente a todo lo que está debajo.
    // le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
    //    var property sueldo = 15000

    var sueldo = 15000
    var deuda = 0
    var dinero = 0
    
    method sueldo() { return sueldo }
    method sueldo(nuevoValor) { sueldo = nuevoValor }
    
    method cobrarSueldo(){
   	 if (deuda > 0){
   		 if(sueldo > deuda){
   			 dinero = (sueldo - deuda)
   			 deuda = 0
   		 }
   		 else{
   			 deuda = deuda - sueldo
   			  
   		 	}
   		 }
   	 dinero += sueldo			 
	 }
	 method gastar(valor){
   		 if (valor > dinero){
   			 deuda += valor - dinero
   			 dinero = 0
   		 }else {
   			 dinero = dinero - valor  
   			 deuda  = 0   		 
   		 }
	 }
	 
	 method totalDinero(){
		 return dinero
	 }
	 method totalDeuda(){
		 return deuda
	 }
}

object baigorria {
    var cantidadEmpanadasVendidas = 100
    var montoPorEmpanada = 15
    var totalCobrado = 0
    
    method venderEmpanada() {
   	 cantidadEmpanadasVendidas += 1
    }
	 method sueldo(){
		 return  cantidadEmpanadasVendidas * montoPorEmpanada
		  }
		 
	 method cobrarSueldo(){
		 totalCobrado += self.sueldo()
		 cantidadEmpanadasVendidas = 1
	 }
}

object galvan {
    var dinero = 300000
    method dinero() { return dinero }
    
    method pagarA(empleado) {
   	 dinero -= empleado.sueldo()
   	 empleado.cobrarSueldo()
   	 
    }
}

// 1- se rompe porque el metodo cobrarSueldo auno no existe.
// 2- hay que agregar un metodo de cobrarSueldo en ambos objetos baigoria y gimenez
