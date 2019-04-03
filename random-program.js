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
}

const pickRandom = (array) => {
    return array[Math.floor(Math.random() * array.length)];
}

const nameArray = ["Bill", "Fred", "Paul", "Jim", "Ringo", "Daphne", "Wilma", "Bob"];

const createPerson = () => {
    let person = {
        name: pickRandom(nameArray),
        age: getRandom(12, 98)
    };
    return person;
}

// const p = createPerson();

// console.log(p);

const people = Array.from({length: 100}, () => createPerson());

for(var i=0; i < people.length; i += 1) {
        
} 

// console.log(people);









