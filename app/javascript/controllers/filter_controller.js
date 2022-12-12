import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["allFilter", "fruitFilter", "vegetableFilter", "carbohydrateFilter", "dairyFilter", "meatFilter", "drinkFilter", "card"]

  connect() {
    console.log("Hello")
  }

  all() {
    const displayedCards = this.cardTargets
    const filterIcon = this.allFilterTarget
    filterIcon.classList.toggle("active-filter")
    displayedCards.forEach((card) => {
    card.classList.toggle("displayed")
    })
  }

  fruit() {
    const displayedCards = this.cardTargets
    const filterIcon = this.fruitFilterTarget
    filterIcon.classList.toggle("active-filter")
    displayedCards.forEach((card) => {
      console.log(card.classList[1])
      if (card.classList[1] == "Fruit" ) {
        card.classList.toggle("displayed")
      }
    })
  }

    vegetable() {
    const displayedCards = this.cardTargets
    const filterIcon = this.vegetableFilterTarget
    filterIcon.classList.toggle("active-filter")
    displayedCards.forEach((card) => {
      console.log(card.classList[1])
      if (card.classList[1] == "Vegetable" ) {
        card.classList.toggle("displayed")
      }
    })
  }

  carbohydrate() {
    const displayedCards = this.cardTargets
    const filterIcon = this.carbohydrateFilterTarget
    filterIcon.classList.toggle("active-filter")
    displayedCards.forEach((card) => {
      console.log(card.classList[1])
      if (card.classList[1] == "Carbohydrate" ) {
        card.classList.toggle("displayed")
      }
    })
  }

  dairy() {
    const displayedCards = this.cardTargets
    const filterIcon = this.dairyFilterTarget
    filterIcon.classList.toggle("active-filter")
    displayedCards.forEach((card) => {
      console.log(card.classList[1])
      if (card.classList[1] == "Dairy" ) {
        card.classList.toggle("displayed")
      }
    })
  }

  meat() {
    const displayedCards = this.cardTargets
    const filterIcon = this.meatFilterTarget
    filterIcon.classList.toggle("active-filter")
    displayedCards.forEach((card) => {
      console.log(card.classList[1])
      if ((card.classList[1] == "Meat") || (card.classList[1] == "Fish")) {
        card.classList.toggle("displayed")
      }
    })
  }

  drink() {
    const displayedCards = this.cardTargets
    const filterIcon = this.drinkFilterTarget
    filterIcon.classList.toggle("active-filter")
    displayedCards.forEach((card) => {
      console.log(card.classList[1])
      if (card.classList[1] == "Drink" ) {
        card.classList.toggle("displayed")
      }
    })
  }
}
