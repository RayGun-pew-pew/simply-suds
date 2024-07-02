import React from "react";
import { useState } from 'react';

export default function Header() {

  const [showCart, setShowCart] = useState(false);
  
  return (
        <header>
            <div className='header-container branding-container' id='branding-container-logo'>
                <a href="/">
                    <img src="transparent-logo.svg" alt="simply suds and more logo" 
                        height="200px" width="200px"/>
                </a>
            </div>
            <div className='header-container branding-container' id="branding-container-name">
                <span id='branding-text-name'>
                Simply Suds & More
                </span>
            </div>
            <nav className="header-container nav-container" id="header-nav-links">
                <div>
                    <a href="/">
                        Home
                    </a>
                </div>
                <div className='link-container'>
                  <a href="/about/index" className="nav-link page-link" id="about">
                    About
                    </a>
                </div>
                <div className='link-container'>
                  <a href="/shop/index" className="nav-link page-link" id='shop'>
                    Shop
                    </a>
                </div>
            </nav>
            <div className="header-container" id='cart-container'>
            {/* <a onClick={() => setShowCart(!showCart)}>
                {showCart ? "X" : <img src="cart.svg" alt="Cart"  height="50px" width="50px" /> }
            </a> */}
            <img src={showCart ? "close.svg" : 'cart.svg'} alt="show or hide cart button"  
                height="50px" width="50px" 
                onClick={() => setShowCart(!showCart)} />
			{showCart ? <Cart /> : null}
            </div>           
        </header>
  );
}
