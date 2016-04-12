// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

// Find the largest palindrome made from the product of two 3-digit numbers.

var products = []

function run() {
  for (var i = 100; i < 1000; i++) {
    for (var j = 100; j < 1000; j++) {
      var product = i*j
      var original = product.toString();
      var reversed = product.toString().split("").reverse().join("");
      if (original == reversed) {
        products.push(i*j)
      }
    }
  }
}

run();

console.log(products.sort(function(a,b) { return a - b}))