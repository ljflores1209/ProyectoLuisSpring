///////////////////////////////////////inicializacion AOS///////////////////////////////////////////////////////////////////

$(function() {
  AOS.init();
});



////////////////////////////////////////Button-Up//////////////////////////////////////////////////////////////////////

//Get the button:
mybutton = document.getElementById("boton-up");
document.getElementById("boton-up").addEventListener('click', topFunction)

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() { scrollFunction() };

function scrollFunction() {
	if (document.body.scrollTop > 15 || document.documentElement.scrollTop > 15) {
		mybutton.style.display = "block";
	} else {
		mybutton.style.display = "none";
	}
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {

	document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}

///////////////////////////////////////////////////mostrar whatsapp//////////////////////////
document.getElementById("whatsapp").addEventListener("click", mostrarW);

function mostrarW(){
	removeWhatsapp();
	let h4=document.createElement('h4');
	h4.innerHTML="+34 664-886-489";
	w.appendChild(h4);	
	
}

function removeWhatsapp() {
    let value = document.getElementById("w").innerHTML;
    console.log(value);
    
    if (value == " ") {
         console.log("esta vacio");
    }else{
		value = " ";
         document.getElementById("w").innerHTML = value;
	}
	
}

document.getElementById('contactar').addEventListener("click",enviar);
let cont=0;
let contactos=[];
let aaa;

function enviar(){
	let nombre= document.getElementById('nombre').value;
	let email= document.getElementById('email').value;
	let telefono= document.getElementById('telefono').value;
	localStorage.setItem('nombre', nombre)
	localStorage.setItem('email', email)
	localStorage.setItem('telefono', telefono)
	agregarContactos(cont, nombre, email, telefono)
	cont++;
	removeInfo()
}

function agregarContactos(i, nombre, email, telefono){
	contactos[i]=[nombre, email, telefono];
		console.log(contactos);
}

function consultar (){
	
	for(let i =0; i< cont; i++){
		console.log(contactos[i]);
	}
	
}

function removeInfo() {
     document.getElementById('nombre').value="";
	document.getElementById('email').value="";
	document.getElementById('telefono').value="";
    
    
}

















