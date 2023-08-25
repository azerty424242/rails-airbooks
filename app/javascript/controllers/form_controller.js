import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="form"
export default class extends Controller {
    static targets = ["button", "form", "calcul"];

    display() {
        this.formTarget.classList.toggle("d-none");
    }
}
