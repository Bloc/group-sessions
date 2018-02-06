# Ruby Debugging Presenter Notes
---

## Slide 1 - title
Learn the strategies and tools necessary to effectively debug your ruby code with a heavy focus on chrome developer tools.

## Slide 2 - Links
Be sure to share the link to slides in the chat as well as mentions that
feedback is welcomed

## Slide 3 - Presenter introduction
Replace this slide with an introduction to yourself. Establish
credibility and share your experience in ruby

## Slide 4 - Overview
Share the topics that will be covered
- Debug life cycle
- Tools for debugging
- Live debugging

## Slide 5 Expectation
Encourage students to interact by answering questions about
the code and tools.

## Slide 6 - Struggle is ok
Set the expectation that it is ok to struggle whether you are learning
or been programming for years. The errors are not meant to stump, but to
learn from.

**Ask students** if they have ever struggled on a ruby error

## Slide 7 - Debugging Cycle
The process of debugging code is cyclical in nature. Explain to students
that programming is repeated cycle of failure or errors. Illustrate, perhaps with a personal experience or anectdote, how you have failed or struggled with an error. 

## Slide 8 - Debugging Cycle diagram
Walk through this slide clockwise, starting with Identify. Leverage the
copy on the slide, but also leverage your own examples of debugging
while explaining each concept in the cycle. 

## Slide 9 - Tools
While sharing the debugging tools, open the Chrome web console in the browser. Also
show the links to the MDN documentation mentioning `console.log` and


**Ask students** if they have ever used irb or breakpoints to debug
**Ask students** if they have ever used Ruby documentation for finding answers

Linters are something that a small amount of Bloc students have even
heard of. Be sure to mention this tool and how it will be a bonus at the
end.

## Slide 10 - Error Message
**Ask students** what they think the error message is trying to say. 

## Slide 11  - Stacktrace
Walk through the stacktrace example using the trace.rb file in the ruby
folder

## Slide 12 - Code together
Leverage the link to the Error on the GitHub gist and irb. 

**Ask students** if they use gist to share code.

_solution to the error: the problem does not return the correct answer
due to a missing `*` on [line 4](https://gist.github.com/bdougie/ae926e797416c434c1396a474e2d3d5a#file-debug-rb-L7)

1. Walk through solving the error using console.log, be sure to make
students try to find the answer before you provide the solution. Do not
leverage online repls for this lecture, leverage the terminal showing students its capabilities.

2. Once you have solved the problem, solve the problem again using the
`pry`. 

3. The linter example link include a link to eslint. Paste the code from
the example and have students mob program to a solution with you. 

## Slide 13 - Setting a breakpoint
1. Explain pry
2. add binding.pry to the bug.rb
3. run it in terminal

## Slide 14 - Setting a breakpoint
1. Explain why you would want to use error handling
2. Add a rescue to the math method
3. Rescue 0

## Slide 15

Take questions if time is available. Be sure to share feedback and slide link.
