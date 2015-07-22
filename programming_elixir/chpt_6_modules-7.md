##Exercise: Modules - 7

#### Find library functions
- convert float to string with two decimals digits (erlang)
- get the value of an operating-system env var (elixir)
- return the extension component of a file name (return .exs if given
"hi/test.exs") (Elixir)
- Convert a string containing JSON into Elixir data structure
- Execute a command in operating system's shell  


[float_to_list/2](http://www.erlang.org/doc/man/erlang.html#float_to_list-2)  
`:erlang.float_to_integer(1.22, [{:decimals, 2}, :compact}])`  

[get_env(varname)](http://elixir-lang.org/docs/v1.0/elixir/System.html#get_env/1)  
`System.get_env("LANG")`  

[extname(path)](http://elixir-lang.org/docs/v1.0/elixir/Path.html#extname/1)  
`Path.extname("something/hi.exs")`  

[cwd!()](http://elixir-lang.readthedocs.org/en/new-guides/ref/master/elixir/System/#System.cwd!/0)  
`System.cwd!()`  

[JSON libraries](https://github.com/h4cc/awesome-elixir#json)  

[cmd](http://elixir-lang.org/docs/stable/elixir/System.html#cmd/3)  
`System.cmd("pwd", [])`  
