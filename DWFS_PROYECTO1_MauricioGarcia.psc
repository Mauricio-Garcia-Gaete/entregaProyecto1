Algoritmo DWFS_PROYECTO1
	
	Definir precioOriginal, cupon, valorConCupon, valorDesCupon, IVA, costoIva, valorConIva, cant, descuentoCantidad, ENVIO, peso, costoEnvio, precioFinal1, precioFinal2 como Real;
	
	IVA <- 12;
	ENVIO <- 10;
	precioOriginal <- leerPrecio("Ingresar valor del producto:");
	cupon <- leerCupon("Ingresar valor del cupon de descuento:");
	valorConCupon <- descontarCupon(precioOriginal, cupon);
	valorDesCupon <- cupon*precioOriginal;
	costoIva <- valorConCupon*IVA/100;
	valorConIva <- calculoIva(valorConCupon, IVA);
	cant <- calculoDesCant("Ingrese la cantidad de productos a comprar:");
	
	Si cant >= 2
		entonces descuentoCantidad <- (valorConIva*5)/100;
		Sino descuentoCantidad <- 0;
		
	Finsi	
		
	peso <- leerPeso("Ingresar peso del producto (en Kg):");
	
	costoEnvio <- ENVIO+peso*2;
	
	precioFinal1 <- (valorConIva - descuentoCantidad)*cant + costoEnvio;
	precioFinal2 <- valorConIva + costoEnvio;
	
	
	Si descuentoCantidad > 0 Entonces
		Escribir "El valor total a pagar es: $", precioFinal1;
		Escribir "El descuento por cupon es de: $", valorDesCupon;
		Escribir "El valor del IVA es de: $", costoIva;
		Escribir "El descuento por cantidad de productos comprados es de: $", descuentoCantidad;
		Escribir "El costo del envio es de: $", costoEnvio;
		
	SiNo
		Escribir "El valor total a pagar es: $", precioFinal1;
		Escribir "El descuento por cupon es de: $", valorDesCupon;
		Escribir "El valor del IVA es de: $", costoIva;
		Escribir "El costo del envio es de: $", costoEnvio;
		
	FinSi
	
	Escribir "Muchas gracias por su compra.";
	
FinAlgoritmo

Funcion precioOriginal <- leerPrecio(mensaje)
		Definir precioOriginal como Real;
		Escribir mensaje;
		Leer precioOriginal;
FinFuncion

Funcion cupon <- leerCupon(mensaje)
	Definir cupon como Real;
	Escribir mensaje;
	Leer cupon;
	cupon <- cupon/100;
FinFuncion

Funcion valorIva <- calculoIva(valorConCupon, 1.12)
	Definir valorIva como Real;
	valorIva <- valorConCupon*1.12; 
	
FinFuncion

Funcion cantidad <- calculoDesCant(mensaje)
	Definir cantidad como Real;
	Escribir mensaje;
	Leer cantidad;
	
FinFuncion

Funcion descuento <- descontarCupon(precioOriginal, cupon)
	Definir descuento como Real;
	descuento <- precioOriginal-(precioOriginal*cupon);
FinFuncion
	
Funcion peso <- leerPeso(mensaje)
	Definir peso como Real;
	Escribir mensaje;
	Leer peso;
FinFuncion

