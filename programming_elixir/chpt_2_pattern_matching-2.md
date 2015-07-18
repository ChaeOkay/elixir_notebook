##Exercise: Pattern Matching -2
###Which of the following will match?

- [a,b,a] = [1,2,3]
- [a,b,a] = [1,1,2]
- [a,b,a] = [1,2,1]


####Predicitons:  
- [a,b,a] = [1,2,3] => (MatchError), a is set to 1 and then
  matched to 3  
- [a,b,a] = [1,1,2] => (MatchError), b was set to 2 previously  
- [a,b,a] = [1,2,1] => [1,2,1]  

####Outcomes:  
- [a,b,a] = [1,2,3] => (MatchError)  
- [a,b,a] = [1,1,2] => (MatchError)  
- [a,b,a] = [1,2,1] => [1,2,1]  
