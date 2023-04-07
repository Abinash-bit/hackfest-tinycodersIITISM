// Initialize the statistics
let totalPersons = 0;
let personsEntered = 0;
let personsLeft = 0;
let foodConsumed = 0;
let foodLeft = 0;

// Update the statistics
function updateStatistics(numEntered, numLeft, foodAmt) {
  personsEntered += numEntered;
  personsLeft += numLeft;
  totalPersons = personsEntered - personsLeft;
  foodConsumed += foodAmt;
  foodLeft -= foodAmt;
  
  // Update the HTML elements
  document.getElementById("total-persons").innerHTML = totalPersons;
  document.getElementById("persons-entered").innerHTML = personsEntered;
  document.getElementById("persons-left").innerHTML = personsLeft;
  document.getElementById("food-consumed").innerHTML = foodConsumed + " kg";
  document.getElementById("food-left").innerHTML = foodLeft + " kg";
}

// Call the function to update the statistics with some sample values
updateStatistics(10, 2, 5);
updateStatistics(15,3,1);