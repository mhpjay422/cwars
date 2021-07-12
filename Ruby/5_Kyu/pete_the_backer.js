// // must return 2
// cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}); 
// // must return 0
// cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000});

function cakes(recipe, available) {
  result = 0
  enough = true
  
  while (enough) {    
    Object.keys(recipe).forEach(item => {
      
      if (!available[item] || recipe[item] > available[item]) {
        enough = false
      }
      else {
        available[item] = available[item] - recipe[item]
      }
    })
    
    if (enough) {
      result += 1 
    }
    
  }
  
  return result