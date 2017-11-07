var inames = [];
var iqtyp = [];
var iprice = [];
function addItem(){
	  
	  inames.push(document.getElementById("item_name").value)
	  iqtyp.push(parseInt(document.getElementById("quantity").value))
	  iprice.push(parseInt(document.getElementById('item_price').value))
	  
	  displayCart()
	   
	}
function displayCart(){
	  
	  
	  cartdata = '<table border="2">';
	  
	  for (i=0; i<inames.length; i++){
	    
	    cartdata += "<tr><td>" + inames[i] + "</td><td>" + iqtyp[i] + "</td><td>" + iprice[i] + "</td><td>" + iqtyp[i] * iprice[i] + "</td></tr>"
	  }
	  
	  cartdata += '</table>';
	  
	 
	  document.getElementById("cart").innerHTML = cartdata;
	  
	}