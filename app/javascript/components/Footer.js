import React from "react"

export default function Footer() {
    return (
	<footer>
	    <nav className="footer-component" id="site-map">
		<h4>Shop</h4>
		<div className="site-map-link">
		    <a href="/shop#soap">Soap</a>
		</div>
		<div className="site-map-link">
		    <a href="/shop#bath-bombs">Bath Bombs</a>
		</div>
		<div className="site-map-link">
		    <a href="/shop#shower-steamers">Shower Steamers</a>
		</div>
		<div className="site-map-link">
		    <a href="/shop#lotion">Lotion</a>
		</div>
		<div className="site-map-link">
		    <a href="/shop#lip-balm">Lip Balm</a>
		</div>
		<div className="site-map-link">
		    <a href="/shop#body-wash">Body Wash</a>
		</div>
	    </nav>
	    <div>
		<h5>Contact Us</h5>
		<address>
		    <a href="mailto:bussiness@simplysudsmore.com">By Email</a>
		    <a href="tel:+14705123503">By Phone</a>
		</address>
	    </div>
	    <nav className="footer-component" id="social-links">
		<div className="social-link">
		    <a href="https://facebook.com">
			<img src="" alt="facebook logo"
			     height="40px" width="40px" />
		    </a>
		</div>
		<div className="social-link">
		    <a href="https://instagram.com">
			<img src="" alt="instagram logo"
			     height="40px" width="40px" />
		    </a>
		</div>
	    </nav>
	    <div className="footer-component" id="branding=-tags">
		<span>
		    <img src="transparent-logo.svg" alt="simply suds and more logo"
			 height="100px" width="100px" />
		    Simply Suds & More
		</span>
		<span>Design by RayGun Designs</span>
	    </div>
	</footer>
    );
}

