def do_some_math(n)
  1/n
end

def print_something
  p "something"
end

def run_program
  output = do_some_math(4)
  print_something if output > 0
end

run_program
