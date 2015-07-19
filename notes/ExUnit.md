#ExUnit

By way of [@iamvery](https://github.com/iamvery/elixir-quantity)'s first elixir project.
Test modules can use ExUnit by declaring `use ExUnit.Case`. `ExUnit.start()` must be called somewhere first though!
Mix applications can have a test_helper that starts ExUnit automatically.  

For this setup, all that's needed is a compiled mix project  
`$ mix compile`  

and then a run of the tests  
`$ mix test`  

####Debugging

Within a test file, at the top add `require IEx`. When you want to
drop a breakpoint within the test, add `IEx.pry`.
```
require IEx

defmodule QuantityTest do
  use ExUnit.Case

  test "string conversion" do
    length = Quantity.of(3, :feet)
    IEx.pry
    assert "#{length}" == "3 feet"
  end
end

```
To use the breakpoints when running the test, run
`$ iex -S mix test`, test being the directory where of test files.  
At the pry point, an iex session will start prompt you to allow prying. The
prompt will display the pry file and line number.
