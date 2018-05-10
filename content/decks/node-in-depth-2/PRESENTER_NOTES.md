# Server-side JavaScript (Node): The Basics

## 1. Quick Poll
Ask questions to engage students:
- How many are taking Node as WDT student? (if not current Node, ask which module they are in)
- How many are taking back-end module Ruby on Rails and curious about Node?
- How many are tinkering with Node on their own?

2nd in a series of lectures on server-side JavaScript technologies.
> 1st lecture: 
- Client vs Server Side JavaScript
- Fullstack web apps
- Async, event-driven in JS/ Node

## 2. A bit about my background. 

## 3. Lecture overview:
1. Review: Node
2. Promises
3. Express.js/ Hapi.js
4. Next steps

## 4. Expectations

## 5. Slides & Feedback Survey
Please remember to fill out the Feedback Survey so we can update content to cater to what you'd like to learn most.
--
Questions?
--

## 8. Review: Client-side vs. Server side Comparison
Detail every single line here.


## Review: What is Node.js?
- Entirely new JS platform
- Node.js is a powerful server-side JavaScript platform for building "fast, scalable network applications."
- Run on Chrome V8 engine

(Reference: Airbnb Engineering https://medium.com/airbnb-engineering/isomorphic-javascript-the-future-of-web-apps-10882b7a2ebc )


## 14. SPAs. Chrome V8 engine. Isomorphic JavaScript
- JavaScript grows up:
After years of advances in personal computing, creative technologists have pushed the web to its limits, and web browsers have evolved to keep up. Now, the Web has matured into a fully-featured application platform, and fast JavaScript runtimes and HTML5 standards have enabled developers to create the rich apps that before were only possible on native platforms. (Reference: Airbnb Engineering https://medium.com/airbnb-engineering/isomorphic-javascript-the-future-of-web-apps-10882b7a2ebc )
- Single-Page Applications

Why is Node so popular?
Isomorphic JavaScript: ability to use 1 single language from front- to back-end
- Single Page Applications: Web browsers now powerful, fully-featured application platform
- Google Chrome V8 engine

JavaScript-driven fullstack web app. Client + Server MVC

## 15. Dichotomy of a fullstack web app built on Node

## 16. "Node.js is an event-driven, asynchronous/ non-blocking I/O platform"

## 18. The Event Loop
Any time something happens in a NodeJS application, an event is created.

New events are loaded onto the event queue, in a FIFO (First In, First Out) order. You might have learned of FIFO when dealing with arrays. These events are processed serially. The event loop takes events from the head of the event queue one at a time and hands them off to the file system, network, or another process.

As those events are processed, they create more events. Those new events are placed at the back of the event queue, and the cycle continues.

## 19. Synchronous vs. Asynchronous
The reason why Node is able to process multiple things at once, even though it is single-threaded, so to speak, is because of the event loop, and that Node.js processes run in an asynchronous manner.

## 20. "Event-driven": Node callbacks are made possible by the event loop.

## Promises
- https://github.com/stevekane/promise-it-wont-hurt
- What is a promise?
- WHY

## How do promises work?

## A simple promise

## Get good at promises & programming in Node
- Additional resources
- https://nodeschool.io/ 
- https://github.com/workshopper/learnyounode 

------
## Next: Express, then some boilerplate code to get started!

My goal is to empower you to, after this lecture, go out & start experimenting/ creating your own Node apps.

At Bloc: we empower you to learn. The jobs today will not be the jobs of tomorrow. It is my hope to empower you to learn.

## Download VSCode
- It has a great Node debugger tool (SHOW)
- https://code.visualstudio.com/docs/nodejs/nodejs-tutorial 


## Express
- what is Express
- why Express

## Install Express

## Getting started with Express
- Express workshop: https://github.com/azat-co/expressworks
- MOZILLA TUTORIAL: https://developer.mozilla.org/en-US/docs/Learn/Server-side/Express_Nodejs
- Build a Node.js API in < 30 mins.
https://medium.freecodecamp.org/building-a-simple-node-js-api-in-under-30-minutes-a07ea9e390d2 

## Review: HTTP diagram

## Node's `http` library is an implementation of HTTP
- HTTP request photo
- Common verbs: GET, POST, PUT, DELETE <> read, create, update, delete

## What makes Express?
- A Node library for request handling
- treats requests as objects, created by event (RECALL: The event loop?)
- Matches on VERB and ROUTE
- Allows chaining of many handlers
- Enables modular layering with routes

## Express Middleware
- A function that handles responding to requests. 
function(req, res, next) {
    ...
}

## A few simple demo

## Request query string
- Show a simple one 

## Request body

## Router
- A "layer" of route handlers (middlewares)

## note
- req.params vs. req.query vs. req.body
- app.use vs. app.all

## Databases
- MongoDB
- SQL
- Sequelize

## React + Node tutorial
- https://codeburst.io/headache-free-ssr-react-js-node-js-and-es6-app-boilerplate-tutorial-267f7be0b7b5
- https://medium.com/@phoebe.greig/headache-free-isomorphic-app-tutorial-react-js-react-router-node-js-ssr-with-state-and-es6-797a8d8e493a
- http://yeoman.io/ 


## Alternative (after): start with boilerplate code

## More Node.js tutorials to get started
- https://medium.com/quick-code/the-best-tutorials-to-learn-node-js-34818d757013

## Closing thoughts
- Our hope here is that you will take these resources & start to go out & create.
- You will not master Node.js by sitting in a lecture. But you now have all the tools you need to start mastering this useful development runtime/ platform.

