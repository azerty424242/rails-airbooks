import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calcul"
export default class extends Controller {
  static targets = ["begin_date", "end_date", "price_per_day", "total_price"]

  connect() {
    console.log(this.begin_dateTarget.value)
  }
  refresh(){
  console.log(this.begin_dateTarget.value)
  console.log(this.end_dateTarget.value)
  }

  total_price(){
    const beginDate = new Date(this.begin_dateTarget.value);
    const endDate = new Date(this.end_dateTarget.value);
    const price_per_day = parseFloat(this.data.get("price_per_date"));

    if (!isNaN(beginDate) && !isNaN(endDate) && price_per_day) {
      const timeDiff = endDate - beginDate;
      const daysDiff = timeDiff / (1000 * 3600 * 24);
      const totalPrice = daysDiff * price_per_day;

      this.total_priceTarget.innerHTML = `<i class="fa-solid fa-money-bill-wave" style="color: #F8C933;"></i> ${totalPrice.toFixed(2)} €`;

    }
  }
}
