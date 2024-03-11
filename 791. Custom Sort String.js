/**
 * @param {string} order
 * @param {string} s
 * @return {string}
 */
// Solution One
var customSortString = function(order, s) {
  const map = new Map();
  const result = [];
  
  for (let i = 0; i < s.length; i++) {
    if (map.has(s[i])) {
      map.set(s[i], map.get(s[i]) + 1);
    } else {
      map.set(s[i], 1);
    }
  }
  
  for (let i = 0; i < order.length; i++) {
    if (map.has(order[i])) {
      for (let j = 0; j < map.get(order[i]); j++) {
        result.push(order[i]);
      }
      map.delete(order[i]);
    }
  }
  
  for (let [key, value] of map) {
    for (let i = 0; i < value; i++) {
      result.push(key);
    }
  }
  
  return result.join('');
};

// Solution Two
var customSortString = function(order, s) {
  let map = {};

  for (let i = 0; i < order.length; i++) {
    map[order[i]] = i;
  }

  for (let i = 0; i < string.length; i++) {
    if(map[string[i]] == undefined) {
      map[string[i]] = Infinity;
    }
  }

  string = string.split("");

  return string.sort((a, b) => map[a] - map[b]).join("");
};

// Solution Three
var customSortString = function(order, s) {
  const map = new Map();
  const result = [];
  
  for (let char of s) {
    map.set(char, (map.get(char) || 0) + 1);
  }
  
  for (let char of order) {
    if (map.has(char)) {
      result.push(...Array(map.get(char)).fill(char));
      map.delete(char);
    }
  }
  
  for (let [key, value] of map) {
    result.push(...Array(value).fill(key));
  }
  
  return result.join('');
}


console.log(customSortString("cba", "abcd")); // "cbad"
console.log(customSortString("bcafg", "abcd")); // "bcad"
console.log(customSortString("kqep", "pekeq")); // "kqeep"