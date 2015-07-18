##Exercise: Pattern Matching -1
###Which of the following will match?

- a = [1,2,3]
- a = 4
- 4 = a
- [a,b] = [1,2,3]
- a = [[1,2,3]]
- [a] = [[1,2,3]]
- [[a]] = [[1,2,3]]

####Predictions:  
true - a = [1,2,3]  
true - a = 4  
false - 4 = a (matching is left to right, 4 is an int and does not match
an unassigned variable)  
false - [a,b] = [1,2,3] (wrong number of arguments, 2 for 3)  
true - a = [[1,2,3]]  
true - [a] = [[1,2,3]]  
false - [[a]] = [[1,2,3]] (wrong number of arguments, 1 for 3)  

####Outcomes:  
- a = [1,2,3] => [1,2,3]  
- a = 4 => 4  
- 4 = a => 4 (enviornment remembered that a = 4, so 4 does match 4. 4 =
  b would raise RuntimeError undefined function: b/0)
- [a,b] = [1,2,3] => (MatchError) no atch of right hand side value:
  [1,2,3]  
- a = [[1,2,3]] => [[1,2,3,]]  
- [a] = [[1,2,3]] => [[1,2,3]]  
- [[a]] = [[1,2,3]] => (MatchError) no match of righ hand side value:
  [[1,2,3]]  

