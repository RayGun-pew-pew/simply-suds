import React from "react"
import { useState } from "react";

export default function Cart(){
    const [total, setTotal] = useState(0);
    
	return(
	    <>
		<img src="remove-item.svg" alt="empty cart button" height="50ox" width="50px" />
	    <table>
		<thead>
		    <tr>
			<th scope="col" colspan="2">Item</th>
			<th scope="col">Price</th>
		    </tr>
		</thead>
		<tbody>
		</tbody>
		<tfoot>
		    <tr>
			<th>Total</th>
			<td>{total}</td>
		    </tr>
		</tfoot>
	    </table>
		<a href="/checkout">Checkout</a>
	    </>
	); 
}
