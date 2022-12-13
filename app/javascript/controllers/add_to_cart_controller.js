import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="add-to-cart"
export default class extends Controller {
  static targets = ["button"]

  connect() {
    console.log("hello from add_to_cart_controller")
  }

  create(event) {
    event.preventDefault()

    fetch(this.buttonTarget.parentElement.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: {  }
    })
      .then(response => response.json())
  }
}
