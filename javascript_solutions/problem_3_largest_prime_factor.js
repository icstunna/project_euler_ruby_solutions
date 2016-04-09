// The prime factors of 13195 are 5, 7, 13 and 29.

// What is the largest prime factor of the number 600851475143 ?

function factors(integer) {
  var range = []
  for (var i = 0; i <= Math.sqrt(integer); i++) {
    range.push(i);
  }

  var listOfFactors = []
  for (var j = 0; j < range.length; j++) {
    if (integer % range[j] == 0) {
      listOfFactors.push(range[j]);
    }
  }

  return listOfFactors;
}

function potentialPrime(number) {
  if (number > 1) {
    var listOfDivisibleNumbers = factors(number);
    if (listOfDivisibleNumbers.length == 1) {
      return true
    }
    else {
      return false
    }
  }
  else {
    return false
  }
}

function greatestPrimeFactor(factorsList) {
  var primeFactorsList = []
  for (var i = 0; i < factorsList.length; i++) {
    if (potentialPrime(factorsList[i])) {
      primeFactorsList.push(factorsList[i]);
    }
  }
  return primeFactorsList.pop();
}

console.log(potentialPrime(17))
console.log(greatestPrimeFactor(factors(600851475143)))