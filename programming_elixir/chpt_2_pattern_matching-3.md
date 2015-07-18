##Exercise: Pattern Matching - 3
###Which of the following will match?

a = 2  
- [a,b,a] = [1,2,3]
- [a,b,a] = [1,1,2]
- a = 1
- ^a = 2
- ^a = 1
- ^a = 2 - a

####Predicitons:  
- [a,b,a] = [1,2,3] => (MatchError) on first a  
- [a,b,a] = [1,1,2] => (MatchError) on first a  
- a = 1 => true or 1  
- ^a = 2 => (MatchError) comparing 1 = 2  
- ^a = 1 => true or 1  
- ^a = 2 - a => true or 1  

####Outcomes:  
- [a,b,a] = [1,2,3] => (MatchError)  
- [a,b,a] = [1,1,2] => (MatchError)  
- a = 1 => 1  
- ^a = 2 => (MatchError)  
- ^a = 1 => 1  
- ^a = 2 - a => 1  

