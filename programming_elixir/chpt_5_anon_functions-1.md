##Exercise: Functions - 1

#### Define the following functions
- list_concat.([:a, :b], [:c, :d]) => [:a, :b, :c, :d]  
- sum.(1,2,3) => 6  
- pair_tuple_to_list.({ 1234, 5678 }) => [1234, 5678]  

####
```
list_contact = fn list_a, list_b -> list_a ++ list_b end  
sum = fn a, b, c -> a + b + c end  
pair_tuple_to_list = fn {a, b} -> [a, b] end  
```
