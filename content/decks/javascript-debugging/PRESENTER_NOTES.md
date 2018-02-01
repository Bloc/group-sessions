# JavaScript Debugging Presenter Notes
---

## Slide 1 - title
Learn the strategies and tools necessary to effectively debug your javascript code with a heavy focus on chrome developer tools.

## Slide 2 - Links
Be sure to share the link to slides in the chat as well as mentions that
feedback is welcomed

## Slide 3 - Presenter introduction
Replace this slide with an introduction to yourself. Establish
credibility and share your experience in JavaScript/

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

**Ask students** if they have ever struggled on a JavaScript error

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
`debugger;`

Walk through each tab showing from the elements tab to the souce tab,
while giving a brief description of what you can do in the tab.

**Ask students** if they have ever used console.log, debugger, or a
linter
**Ask students** if they have ever used MDN for finding answers

Linters are something that a small amount of Bloc students have even
heard of. Be sure to mention this tool and how it will be a bonus at the
end.

## Slide 10 - Error Message
**Ask students** what they think the error message is trying to say. 

## Slide 11  - Stacktrace
Walk through the MDN explanation of `console.trace()` and explain how
the stacktrace is the breadcrumbs of how you arrived to the problem in
most cases.

## Slide 12 - Code together
Leverage the link to the Error on the GitHub gist. 

**Ask students** if they use gist to share code.

_solution to the error: the problem does not return the correct answer
due to a missing `*` on [line 4](https://gist.github.com/bdougie/6eddcb4902a92c9831e92b49c39a79f9#file-debugger-js-L7)_

1. Walk through solving the error using console.log, be sure to make
students try to find the answer before you provide the solution. Do not
leverage JSbin or similar repls for this lecture, leverage the Chrome
console showing students its capabilities.

2. Once you have solved the problem, solve the problem again using the
`debugger;`. Be sure to note that the debugger places you in the source
tab of the dev tools

3. The linter example link include a link to eslint. Paste the code from
the example and have students mob program to a solution with you. 

https://eslint.org/demo/

## Slide 13 - Another Code example
The Invisible error example is meant to show how to debug errors that do not
explicitly provide an error message. You will also need to leverage the
elements tab in addition to the source tab.

The example has been deployed to Netlify to show how you can debug
errors in production code without access to the repository. 

1. Point out that the reveal animation is not showing
  - use the inspect elements feature to show that the points exist but
  are not animating
2. Open the tab to show that you can see the reveal points is located in
   the `landing.js` file
   - leverage the console.log, debugger, and manually setting
   breakpoints to identify `revealPoint` is not working.
   - slowly push students to answer questions and discover the solution
   with you
   - The solution is to change `$('point')` to `$('.point')`
3. Summarize how you arrive to the solution and began discovering the
   issue without the help of error messages.

## Slide 14

Take questions if time is available. Be sure to share feedback and slide link.
