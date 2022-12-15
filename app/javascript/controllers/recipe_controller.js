import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="recipe"
export default class extends Controller {
  static values = {ingredient: String}
  static targets = ["description", "title"]
  connect() {
    console.log('controller connected')
    this.#addRecipe()
    console.log(this.titleTarget)
    console.log(this.descriptionTarget)
  }
  #addRecipe() {
    const url = `https://www.themealdb.com/api/json/v1/1/filter.php?i=${this.ingredientValue}`
    fetch(url)
      .then(response=> response.json())
      .then((data)=> {
        console.log(data.meals[0]["idMeal"])
          fetch(`https://www.themealdb.com/api/json/v1/1/lookup.php?i=${data.meals[0]["idMeal"]}`)
          .then(response=> response.json())
          .then((data)=> {
            console.log(data.meals[0])
            this.titleTarget.insertAdjacentHTML("beforeend", data.meals[0]["strMeal"])
            this.descriptionTarget.insertAdjacentHTML("beforeend", data.meals[0]["strInstructions"])
          })
        })

    //console.log(this.ingredientValue)

  }
}
