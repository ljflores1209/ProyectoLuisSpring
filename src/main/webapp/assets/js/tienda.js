document.getElementById("calcular").addEventListener("click", calcular);

function calcular(){
    removeDescuento()
    //console.log("hola");
    let codigo=(document.getElementById("cadena").value);
    let importe=document.getElementById("numero").value;
    let descuento= calculaDescuento(importe) + calculaDescuCodigo(codigo);
    let h1 = document.createElement('h1');
     
     h1.className = 'btn btn-success m-1 with=100px';
     h1.innerHTML=descuento+"%";
     bbb.appendChild(h1)

    
    
}


function calculaDescuento(importe){
    let descuento=0;
    if (importe>=100 && importe<=300){
        descuento=5;        
    }else if(importe>300 && importe<=600){
        descuento=7;

    }else if(importe>600){
        descuento=10;
    }

    return descuento;
}

function calculaDescuCodigo(codigo){
    let descuento=0;
    if(codigo.slice(0,2)=="15" || codigo.slice(0,2)=="37" || codigo.slice(0,2)=="27" || codigo.slice(0,2)=="32"  ){
        descuento=1;
        

    }else if (codigo.slice(0,2)=="26" || codigo.slice(0,2)=="35"){
            descuento=3;
    }   
    return descuento;
    
}

function removeDescuento() {
    let value = document.getElementById("bbb").innerHTML;
    console.log(value);
    
    if (value == " ") {
         console.log("esta vacio");
    }else{
		value = " ";
         document.getElementById("bbb").innerHTML = value;
	}
	
}