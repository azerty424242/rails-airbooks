import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calcul"
export default class extends Controller {
  static targets = ["begin_date", "end_date"]

  connect() {
    console.log(this.begin_dateTarget.value)
  }
  refresh(){
  console.log(this.begin_dateTarget.value)
  console.log(this.end_dateTarget.value)
  console.log((this.end_dateTarget) - (this.begin_dateTarget).value)
  }
  total_price(){

  }

}
