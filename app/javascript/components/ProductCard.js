import React from "react"
import { useState } from "react";

export default function ProductCard({product}) {

    const [showCardModal, setShowCardModal] = useState(false);

    if(showCardModal){
	<div>
	    <div className="darkBG" 
		 onClick={() => setShowCardModal(!showCardModal)}/>
            <article className="centered modal">
		<div>
                    <h1 className="heading">
                        {product["name"] ? product["name"] : "Missing Name"}
                    </h1>
                    <img src="close.svg" alt="" 
                        height="25px" width="25px" 
                        onClick={() => setShowCardModal(!showCardModal)} />
                </div>
                <div className="heading">
                    <div>
                        {product["images"].forEach((image, index) => {
                            return (
                                <img src={image["src"]} alt="" 
                                key={index} height="25px" width="25px" 
                                onClick={() => setActiveImage(index)} />
                            )
                        })}
                    </div>
                    <div>
                        {/* <img src={product["images"][activeImage]["src"]} alt="" 
                            height="100px" width="100px" /> */}
                    </div>
                    <div>
                        <p>
                            {product["description"]}
                            This is a product 
                        </p>
                    </div>
                    <form onClick={() => handleAddToCart()}>
                        <select name="varients" id="" defaultValue="Thing 1">
                            <option value="Varient 1">Thing 1</option>
                            <option value="Varient 2"> Thing 2</option>
                        </select>
                        <input type="number" name="quantity" id=""  
                            defaultValue="1"
                            min="1" max="10"/>
                        <span>
                            Price: $100
                        </span>     
                        <button type="submit">
                            <img src="add-item.svg" alt="" 
                                height="25px" width="25px"/>
                        </button>
                    </form>
                </div>
            </article>
        </div>
    }

    if (product["images"].length > 0){
	return(
	    <img src={product["images"][0]}
		 alt=""
		 height="250px" width="250px"
		 onClick={() => setShowCardModal(!showCardModal)} />
	)
    } else {
	return(
	    <img src="transparent-logo.svg" alt="" 
		 height="250px" width="250px" 
		 onClick={() => setShowCardModal(!showCardModal)} />
	)
    }
}
