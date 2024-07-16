const stripe = Stripe("pk_test_51PR2wqK5wu4lBGD1pl8py2ku27EN68E4py235ToZimQnSRfFFXzZZFP6wPfNuoui9Eve3dEGvDXmu9Your6qgENq00y3x9YC1l");

const client_secret = document.cookie
      .split("; ")
      .find((row) => row.startsWith("client_secret="))
?.split("=")[1];

const appearence = {
    theme: "stripe",
};

const elements = stripe.elements({appearence, clientSecret: client_secret});

const paymentElementOptions = {
    layout: "tabs",
}

const paymentElement = elements.create("payment", paymentElementOptions);

paymentElement.mount("#payment_element")

document
    .querySelector("#payment_form")
    .addEventListener("submit", handleSubmit);

async function handleSubmit(event) {
    event.preventDefault();
    setLoading(true)

    const {error} = await stripe.confirmPayment({
	elements,
	confirmParams: {
	    return_url: "http://localhost:3000/",
	},
    });

    if (error.type === "card_error" || error.type === "validation_error") {
	showMessage(error.message);
    } else {
	showMessage("An unexpected error occurred.");
    }

    setLoading(false);
}

function setLoading(isLoading) {
  if (isLoading) {
    // Disable the button and show a spinner
    document.querySelector("#submit").disabled = true;
    document.querySelector("#spinner").classList.remove("hidden");
    document.querySelector("#button-text").classList.add("hidden");
  } else {
    document.querySelector("#submit").disabled = false;
    document.querySelector("#spinner").classList.add("hidden");
    document.querySelector("#button-text").classList.remove("hidden");
  }
}
