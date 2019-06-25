// 1. create a function `getRandom(max, min)` which will return a random integer between `min` (inclusive) and `max` (exclusive)
// 2. create a function `pickRandom(array)` which will return a random value from the array passed in
// 3. create a function `createPerson` that can be called like this:
/*
const p = createPerson("Fred", 45)
p.name //"Fred"
p.age //45
*/
// 4. create an array of 8 or so names.Then use the functions you created  previously to create an array`people` containing 100 people objects each with a random name, and an age between 12 and 98
//5. Tell me the average age of all Freds
//6. Give me a demographic breakdown of how many people are < 20, 20 - 30, 30 - 40, etc


const getRandom = (min, max) => {
  return Math.round(Math.random() * (max - min) + min);
};

const pickRandom = (array) => {
  return array[Math.floor(Math.random() * array.length)];
};

const nameArray = ["Bill", "Fred", "Paul", "Jim", "Ringo", "Daphne", "Wilma", "Bob"];

const createPerson = () => {
  let person = {
    name: pickRandom(nameArray),
    age: getRandom(12, 98)
  };
  return person;
};

const people = Array.from({length: 100}, () => createPerson()); // create an array of 100 random names and 

// const fredObjects = people.filter(name => name.name === "Fred");

const averageAge = (array) => {
  let sum = 0;
  let fredCount = 0;
  for (let i = 0; i < array.length; i++) {
    if (array[i].name === 'Fred') {
      sum += array[i].age;
      fredCount++;
    }
  }
  if (fredCount === 0) { // in case division by zero
    return 0;
  }
  avg = sum / fredCount;
  return Math.floor(avg); // to return a round number
};

const underTwenty = people.filter(age => age.age < 20);
const twentyToThirty = people.filter(age => age.age >= 20 && age.age < 30);
const thirtyToForty = people.filter(age => age.age >= 30 && age.age < 40);
const fortyToFifty = people.filter(age => age.age >= 40 && age.age < 50);
const fiftyToSixty = people.filter(age => age.age >= 50 && age.age < 60);
const sixtyToSeventy = people.filter(age => age.age >= 60 && age.age < 70);
const seventyToEighty = people.filter(age => age.age >= 70 && age.age < 80);
const eightyToNinety = people.filter(age => age.age >= 80 && age.age < 90);
const ninetyToHundred = people.filter(age => age.age >= 90 && age.age <= 100);

const demoNumber = (array) => {
  let ageGroup = 0;
  for (let i = 0; i < array.length; i++) {
    debugger;
    ageGroup = array.length;
  }
  return ageGroup;
};

// const demographics = (lowNum, highNum) => {
//     
// };

console.log("The average age of all Freds is " + averageAge(people) + ".");
console.log("People under 20: " + demoNumber(underTwenty));
console.log("People between 20 and 30: " + demoNumber(twentyToThirty));
console.log("People between 30 and 40: " + demoNumber(thirtyToForty));
console.log("People between 40 and 50: " + demoNumber(fortyToFifty));
console.log("People between 50 and 60: " + demoNumber(fiftyToSixty));
console.log("People between 60 and 70: " + demoNumber(sixtyToSeventy));
console.log("People between 70 and 80: " + demoNumber(seventyToEighty));
console.log("People between 80 and 90: " + demoNumber(eightyToNinety));
console.log("People between 90 and 100: " + demoNumber(ninetyToHundred));
