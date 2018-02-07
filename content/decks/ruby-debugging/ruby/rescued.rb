def do_some_math(n)
  begin
    # Any exceptions in here... 
    1/n
  rescue
    0
  end
end

def print_something
  p "something"
end

def print_something_else
  p "something else"
end

def run_program
  output = do_some_math(0)
  output > 0 ? print_something : print_something_else
end

run_program

