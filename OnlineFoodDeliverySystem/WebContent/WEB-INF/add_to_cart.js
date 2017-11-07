inames = []
iqtyp = []
iprice = []
function addItem(){
	  
	  inames.push(document.getElementById('item_name').value)
	  iqtyp.push(parseInt(document.getElementById('pqty').value))
	  iprice.push(parseInt(document.getElementById('item_price').value))
	  
	  displayCart()
	   
	}
function displayCart(){
	  
	  
	  cartdata = '<table>';
	  
	  for (i=0; i<inames.length; i++){
	    
	    cartdata += "<tr><td>" + inmaes[i] + "</td><td>" + iqtyp[i] + "</td><td>" + iprice[i] + "</td><td>" + iqtyp[i] * iprice[i] + "</td></tr>"
	  }
	  
	  cartdata += '</table>'
	  
	  alert(cartdata)
	  document.getElementById('cart').innerHTML = cartdata
	  
	}