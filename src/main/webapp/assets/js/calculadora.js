function forclear(){
    document.getElementById("numero").innerHTML="0";
    
}

function removeZero() {
    let value = document.getElementById("numero").innerHTML;
    
    if (value == "0") {
         value = " "
         document.getElementById("numero").innerHTML = value;
    }
}


function show(valor){
    removeZero();
    document.getElementById("numero").innerHTML+=valor;
}

function calcular(){
    let ecuacion=document.getElementById('numero').innerHTML;
    let res=eval(ecuacion);
    document.getElementById('numero').innerHTML=res;

}

function arraysNumeros(a){
    let array=[];
    for(let i = 1; i <= a; i++){
        array.push(i);

    }
    return array;

}