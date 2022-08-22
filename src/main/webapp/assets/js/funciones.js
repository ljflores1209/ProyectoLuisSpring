////////////////////////////////////////mostrar opciones en desplegable/////////////////////////////////////////s
$('select').on('change', function() {
  
  let id = $(this).find('option:selected').attr('value');
  console.log(id);
  
  if(id==1){
    $("#opcion-cadena").css("display", "none");
    $('#opcion-juego').css("display", "block");
    $('#opcion-formulario').css("display", "none");
    $('#opcion-memoria').css("display", "none");
  

  }else if(id==2){
    $("#opcion-cadena").css("display", "none");
    $('#opcion-juego').css("display", "none");
    $('#opcion-formulario').css("display", "block");
    $('#opcion-memoria').css("display", "none");
    parar();      
  }else if(id==3){
    $("#opcion-cadena").css("display", "block");
    $('#opcion-juego').css("display", "none");
    $('#opcion-formulario').css("display", "none");
    $('#opcion-memoria').css("display", "none");
    parar();
  }else if(id==4){
    $("#opcion-cadena").css("display", "none");
    $('#opcion-juego').css("display", "none");
    $('#opcion-formulario').css("display", "none");
    $('#opcion-memoria').css("display", "block");
    parar();
  }
});


function repetir(letra, altura){
    let a="";
    for(let i =0; i<altura; i++){
        a+=letra ;
    }
    return a 
}

function arbolito( cadena, veces) {   
        res = "";
        for (let i = 0; i < veces; i++) {
            res += repetir(cadena, i + 1) + "\n";
        }
        return res;
    }


function normalizaCadena (cadena) {
    cadena = cadena.trim()
    let res = cadena.slice(0, 1)
    for (let i = 1; i < cadena.length; i++) {
         let carActual = cadena.slice(i, i + 1);
          let carAnterior = cadena.slice(i - 1, i) 
          if (!(carActual == " " && carAnterior == " ")) { 
              res += carActual
            } 
    } 
        return res;
}
///////////////////////////////////////Buscar sub-cadenas//////////////////////////
document.getElementById('buscar').addEventListener("click",buscarCadena);

function buscarCadena(){
    let cadena=document.getElementById('cadena').value;
    let subcadena=document.getElementById('subcadena').value;
    if(cadena==="" || subcadena===""){
        document.getElementById('mensaje').innerHTML= "*Debe rellenar los campos"
        document.getElementById("result").innerHTML = "";
        document.getElementById("formu").reset();
    }else {
        
    document.getElementById('mensaje').innerHTML="";
    
    let pos = cadena.indexOf(subcadena);
    let num=0;
    while (pos > -1) {
        pos = cadena.indexOf(subcadena, pos + 1);
        num++;
          
    } 
    if (num<1){
        document.getElementById('result').innerHTML= "La sub-cadena no se encuentra dentro de la cadena";
    }else if(num===1){
        document.getElementById("result").innerHTML = "La sub-cadena ``" + subcadena +"´´ se repite " +num+ " vez!!! ";
    }else if(num>1){
        document.getElementById("result").innerHTML = "La sub-cadena ``" + subcadena + "´´ se repite " +num+ " veces!!! ";
    } 
}  
}
///////////////////////////////Button limpiar/////////////////////////////////
document.getElementById('limpiar').addEventListener("click",limpiar);
document.getElementById('limpiar-numeros').addEventListener("click",limpiar);
document.getElementById('limpiar-numeros').addEventListener("click",parar);
 function limpiar(){
    document.getElementById("result").innerHTML = "";
    document.getElementById("formu").reset();
    document.getElementById("formu-numeros").reset();
    document.getElementById("tablero").innerHTML = "";
    document.getElementById("contador").innerHTML = "";
 }

///////////////////////////////////juego números/////////////////////////////////////


 

 


document.getElementById('empezar').addEventListener('click', empezar)
 
let numeroAPulsar
let maximo;
let temporizador;
function empezar () {
  if(document.getElementById('cantidad').value!=""){
    document.getElementById('mensajeCantidad').innerHTML="";
    maximo = parseFloat(document.getElementById('cantidad').value);
 
  // El máximo nos lo pone el usuario en el input cantidad
 
  temporizador = setTimeout(saludo, 1000);
  let contador = maximo;
  function saludo () {
    //console.log("hola");
    document.getElementById('contador').innerHTML = "Tiempo restante: "+contador+" seg";
    contador--;
    if (contador < 0) {
      alert('UPSS!!! Debes ser mas rapido..');
      document.getElementById('tablero').innerHTML = '';
      document.getElementById('contador').innerHTML = '';
      document.getElementById("formu-numeros").reset();
     
    } else {
      temporizador = setTimeout(saludo, 1000)
    }
  }
  //  Primero hay que pulsar el 1. Como aquí comenzamos empezamos por el principio
  numeroAPulsar = 1
  // Me guardo el tablero para no tener que estar repitiendo el documeng.getElementById
  let tablero = document.getElementById('tablero')
  // Vacío el tablero porque estoy empezando
  tablero.innerHTML = ''
  // LLamo a la función arrayDesordenado para obtener un array desordenado
  // ¿Cuántos elementos? Los que me ha dado el usuario y que los he guardado en maximo
  let numeros = arrayDesordenado(maximo)
  // Añado tantos botones como me haya dicho el usuario (maximo)
  for (let i = 0; i < maximo; i++) {
  // Crear un botón llamando a la función y le paso el texto que quiero que tenga
  // En este caso el elemento del array para que los botones salgan desordenados
    let boton = crearBoton(numeros[i])
    // Y lo añado al tablero
    tablero.appendChild(boton)
  }
}else{
  document.getElementById('mensajeCantidad').innerHTML="*Debe introducir una cantidad" 
}
}

function parar () {
  clearInterval(temporizador)
  document.getElementById("contador").innerHTML = "";
}
 
function crearBoton (texto) {
  // Creo el elemento
  let boton = document.createElement('button')
  // Le pongo como texto lo que me pasen como parámetro
  boton.innerHTML = texto
  // Le añado una clase para hacer bonito
  boton.className = ' color-boton boton-tablero m-1'
  // Capturo el evento click para que cuando pulsen el botón comprobemos
  // SI el usuario va bien o ha perdido
  boton.addEventListener('click', pulsado)
  // Devuelvo el botón
  return boton
}
 
function arrayDesordenado (cantidad) {
  // Creo un array de números del 1 a cantidad
  let numeros = []
  for (let i = 0; i < cantidad; i++) {
    numeros.push(i + 1)
  }
  // Desordeno el array
  for (let i = 0; i < 10; i++) {
    numeros.sort(function (a, b) { return 0.5 - Math.random() })
  }
  // Devuelvo el array
  return numeros
}
 
function pulsado () {
  // Miro cual es el número que me han pulsado (el texto del botón)
  let numeroPulsado = parseFloat(this.innerHTML)
  if (numeroAPulsar == numeroPulsado) {
  // Si el número pulsado es el que se tenía que pulsar
    // Deshabilito el botón
    this.disabled = 'true'
    // Le cambio la clase
    this.className = 'btn boton-tablero m-1'
    // Le pongo color rojo
    this.style.color = 'red'
    // El número a pulsar es uno más
    numeroAPulsar++
    // SI ya hemos pulsado todos los números el usuario ha ganado
    if (numeroAPulsar > maximo) {
      alert('Has ganado ¡BRAVO!')
      document.getElementById('tablero').innerHTML = '';
      document.getElementById("formu-numeros").reset();
      parar();
    }
  } else {
    // Si el número no es el que se tenía que pulsar el usuario ha perdido
    alert('Has perdido ¡JAJAJAJA!')
    document.getElementById('tablero').innerHTML = '';
    document.getElementById("formu-numeros").reset();
    parar();
  }
}

////////////////////////////////////////////////Temporizador////////////////////////////////////////////////

 


 //////////////////////////////////////Formulario Registro/////////////////////////////////////////////////////
document.getElementById("enviar").addEventListener('click', agregarUsuario);

let personas =["Alex", "Luis", "Jose"];
personas.push("Carlos");
 
function agregarUsuario(){
  console.log("hola")
  let nombre=document.getElementById("nombreUsuario").value
  let email=document.getElementById("email").value
  let cont1=document.getElementById("cont1").value
  let cont2=document.getElementById("cont2").value
  console.log(nombre,email,cont1,cont2);

  if(nombre==="" || email===""|| cont1==="" || cont2==="" ){
    document.getElementById("mensajeRegistro").innerHTML = "*Debe rellenar todos los campos";
    document.getElementById("formu-registro").reset();
  }else if(cont1==cont2){
    console.log(nombre,email,cont1,cont2);
      let usuario = {}
      usuario.nombre= nombre;
      usuario.email= email;
      usuario.cont1= cont1;
      usuario.cont2=cont2;
      personas.push(JSON.stringify(usuario));
      console.log("usuario agregado" + personas);
      document.getElementById("mensajeRegistro").style.display="none";
      document.getElementById("usuarioBienvenida").style.display="block";
      document.getElementById("usuarioAccion").style.display="none";
      document.getElementById("mostrarNombre").innerHTML=nombre;
      document.getElementById("mostrarEmail").innerHTML=email;
      document.getElementById("mostrarCont1").innerHTML=cont1;


    }else{
      document.getElementById("mensajeRegistro").innerHTML = "*Las contraseñas no coinciden";
      document.getElementById("formu-registro").reset();
    }
}

function mostarRegistros(){
  for(let i=0;i<personas.length;i++){
  
    

  }

}

////////////////////////////////////////////Memoria////////////////////////////////////////


