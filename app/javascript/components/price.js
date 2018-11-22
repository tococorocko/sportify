function rentPrice()
{
  var startTime = document.querySelector(".start_date");
  var endTime = document.querySelector(".end_date");
  var s = new Date(startTime.value);
  var e = new Date(endTime.value);
  var hours = Math.abs(e - s) / (60 * 60 *1000);
  var price_per_hour = document.getElementById("price_per_hour");
  var price = price_per_hour.value * hours;
  total_price.innerText = 'Price for the period: € ' + price;
}

const priceCalculate = document.querySelectorAll(".end_date");
priceCalculate[1].addEventListener("focusout", rentPrice);






