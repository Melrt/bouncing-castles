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
    // console.log(dateStr)
    // console.log(selectedDates)
    // console.log(selectedDates[selectedDates.length-1])
    const periodChosen = selectedDates.length == 2
    if (periodChosen) {
    //   const totalAmountSpan = document.getElementById('total_amount')

      const beginningDate = selectedDates[0]
      const endDate = selectedDates[selectedDates.length-1]

    //   const goatDailyPrice = instance.element.dataset.dailyPrice

    //   const daysCount = (endDate - beginningDate) / 60 / 60 / 24 / 1000

    //   totalAmountSpan.innerText = daysCount * goatDailyPrice
      const beginningDateInput = document.getElementById('date_start')
      const endDateInput       = document.getElementById('date_end')
      beginningDateInput.value = beginningDate
      endDateInput.value       = endDate
    }
  },
})
