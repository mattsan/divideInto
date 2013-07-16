_ = require './lib/underscore-min.js'

Ball = (i, w) ->
  i: i
  w: w

comp = (targets) ->
  if targets[0].w == targets[1].w
    targets[2].i
  else if targets[0].w < targets[1].w
    targets[1].i
  else
    targets[0].i

solve = (balls) ->
  right = balls.slice 0, 3
  left  = balls.slice 3, 6
  other = balls.slice 6, 8

  rsum = _.reduce right, ((memo, num) -> memo + num.w), 0
  lsum = _.reduce left,  ((memo, num) -> memo + num.w), 0

  if lsum == rsum
    if other[0].w < other[1].w then other[1].i else other[0].i
  else if lsum < rsum
    comp right
  else
    comp left

console.log solve [
  Ball 0, 7
  Ball 1, 5
  Ball 2, 5
  Ball 3, 5
  Ball 4, 5
  Ball 5, 5
  Ball 6, 5
  Ball 7, 5
]

console.log solve [
  Ball 0, 5
  Ball 1, 5
  Ball 2, 5
  Ball 3, 5
  Ball 4, 7
  Ball 5, 5
  Ball 6, 5
  Ball 7, 5
]

console.log solve [
  Ball 0, 5
  Ball 1, 5
  Ball 2, 5
  Ball 3, 5
  Ball 4, 5
  Ball 5, 5
  Ball 6, 5
  Ball 7, 7
]
