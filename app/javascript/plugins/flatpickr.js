import flatpickr from "flatpickr"
import "flatpickr/dist/themes/dark.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

// flatpickr(".datepicker", {
//   altInput: true,
//   allowInput: true,
//   // enableTime: true
// })

flatpickr("#rental-dates", {
  mode: "range",
  minDate: "today",
  dateFormat: "d-m-Y",
  onChange: function(selectedDates, dateStr, instance) {
    // console.log(selectedDates)
    const periodChosen = selectedDates.length == 2
    if (periodChosen) {
      const castleTotalPriceEl = document.getElementById('castle-total-price')
      const beginningDateInput = document.getElementById('date_start')
      const endDateInput       = document.getElementById('date_end')
      const totalPriceInput    = document.getElementById('rental_total_price')

      const dailyPrice         = parseInt(instance.element.dataset.dailyPrice)

      const beginningDate = selectedDates[0]
      const endDate       = selectedDates[selectedDates.length-1]

      const daysCount  = (endDate - beginningDate) / 60 / 60 / 24 / 1000
      const totalPrice = daysCount * dailyPrice

      castleTotalPriceEl.innerText = `${totalPrice} €`

      beginningDateInput.value = beginningDate
      endDateInput.value       = endDate
      totalPriceInput.value    = totalPrice
    }
  },
})
