'
My roommates and I play a lot of Mario Kart Wii together,
and I came up with an interesting problem to solve. The question
is how does the game decide what power-up you receive after you
run over the special boxes ("items" as we call them). So naturally,
I took to R and solved the problem. 

The function takes one arguement: the position you are in.
Then given a set of probabilities for each special item per
your position, it runs a random probability test to select one.
This item is returned. For simplicity, I did not include every
item possiblbe in the game.
'

item <- function(place){
  if (place > 9) {
    lightning = 0
    bullet = .15
    gshroom = .65
    odds = runif(1)
    if (odds > gshroom){
      return(c('gshroom'))
    } else if (odds > bullet){
      return(c('bullet'))
    } else if (odds > lightning){
      return(c('lightning'))
    }
  } else if (place > 6){
    bullet = 0
    gshroom = .10
    tripred = .20
    tripshroom = .50
    red = .80
    tripnaner = .90
    odds = runif(1)
    if (odds > tripnaner){
      return(c('tripnaner'))
    } else if (odds > red){
      return(c('red'))
    } else if (odds > tripshroom){
      return('tripshroom')
    } else if (odds > tripred){
      return(c('tripred'))
    } else if (odds > gshroom){
      return(c('gshroom'))
    } else if (odds > bullet){
      return(c('bullet'))
    }
  } else if (place > 3){
    tripred = 0
    tripshroom = .25
    red = .50
    tripnaner = .70
    aids = .80
    odds = runif(1)
    if (odds > aids){
      return(c('aids'))
    } else if (odds > tripnaner){
      return(c('tripnaner'))
    } else if (odds > red){
      return(c('red'))
    } else if (odds > tripshroom){
      return(c('tripshroom'))
    } else if (odds > tripred){
      return(c('tripred'))
    }
  } else if (place >= 1){
    red = 0
    tripnaner = .15
    naner = .30
    odds = runif(1)
    if (odds > naner){
      return(c('naner'))
    } else if (odds > tripnaner){
      return(c('tripnaner'))
    } else if (odds > red){
      return(c('red'))
    }
  }
}