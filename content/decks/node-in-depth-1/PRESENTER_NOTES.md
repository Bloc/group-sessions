# Server-side JavaScript (Node): The Basics

## 1. Quick Poll
Ask questions to engage students:
- How many are taking Node as WDT student? (if not current Node, ask which module they are in)
- How many are taking back-end module Ruby on Rails and curious about Node?
- How many are tinkering with Node on their own?

1st in a series of lectures on server-side JavaScript technologies.
> Up to this point, you have been learning Client-Side JavaScript. Now we are venturing into a new realm, Server-Side technologies.

## 2. A bit about my background. 

## 3. Lecture overview:
1. Background: Client-side vs Server-side JavaScript.
2. Intro to Node.js
3. The Event Loop
4. Node modules

## 4. Expectations

## 5. Slides & Feedback Survey
Please remember to fill out the Feedback Survey so we can update content to cater to what you'd like to learn most.
--
Questions?
--

## 6. Client-Web Server Diagram
> Ask to engage students: who would like to take a stab at explaining this diagram? 
HTTP, request, response

## 7. Client-Side JavaScript
- Front-end code
- Runs on client machine
- Makes requests to a server; processes, manipulates, and/or renders data that is received in response

## 8. Client-side vs. Server side Comparison
Detail every single line here.

## 9. Client. Server. Request. Response.
Go back to original diagram.
Ask clarifying questions.

## 10. What is Node.js?
- Entirely new JS platform
- Node.js is a powerful server-side JavaScript platform for building "fast, scalable network applications."

## 11. The Chrome V8 engine

## 12. Which companies use Node?

## 13. A typical web app without Node.js
- Old model: The bulk of the application logic (views, templates, controllers, models, internationalization, etc.) lives in the client, and it talks to an API for data. The server could be written in any language, such as Ruby, Python, or Java, and it mostly handles serving up an initial barebones page of HTML. Once the JavaScript files are downloaded by the browser, they are evaluated and the client-side app is initialized, fetching data from the API and rendering the rest of the HTML page.

- This is great for the user because once the app is initially loaded, it can support quick navigation between pages without refreshing the page, and if done right, can even work offline.

- This is great for the developer because the idealized single-page app has a clear separation of concerns between the client and the server, promoting a nice development workflow and preventing the need to share too much logic between the two, which are often written in different languages.
(Reference: Airbnb Engineering https://medium.com/airbnb-engineering/isomorphic-javascript-the-future-of-web-apps-10882b7a2ebc )

## Issues
- PERFORMANCE:
If the server doesn’t render a full page of HTML but instead waits for client-side JavaScript to do so, users will experience a few critical seconds of blank page or loading spinner before seeing the content on the page. There are plenty of studies showing the drastic effect a slow site has on users, and thus revenue. Amazon claims that each 100ms reduction in page load time raises revenue by 1%. Twitter spent a year and 40 engineers rebuilding their site to render on the server instead of the client, claiming a 5x improvement in perceived loading time.
- MAINTAINABILITY/ Separation of Concerns
While the ideal case can lead to a nice, clean separation of concerns, inevitably some bits of application logic or view logic end up duplicated between client and server, often in different languages. Common examples are date and currency formatting, form validations, and routing logic. This makes maintenance a nightmare, especially for more complex apps.

Some developers, myself included, feel bitten by this approach — it’s often only after having invested the time and effort to build a single-page app that it becomes clear what the drawbacks are.

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
Explain details of this diagram.

--
QUESTIONS?
--

## 16. "Node.js is an event-driven, asynchronous/ non-blocking I/O platform"

## 18. The Event Loop
Any time something happens in a NodeJS application, an event is created.

New events are loaded onto the event queue, in a FIFO (First In, First Out) order. You might have learned of FIFO when dealing with arrays. These events are processed serially. The event loop takes events from the head of the event queue one at a time and hands them off to the file system, network, or another process.

As those events are processed, they create more events. Those new events are placed at the back of the event queue, and the cycle continues.

## 19. Synchronous vs. Asynchronous
The reason why Node is able to process multiple things at once, even though it is single-threaded, so to speak, is because of the event loop, and that Node.js processes run in an asynchronous manner.

## 20. "Event-driven": Node callbacks are made possible by the event loop.
The first thing you need to understand is that Node.js is a single threaded process. This means that it can only handle one task at a time. Sounds super great for a system that is supposed to serve a website or API to multiple people at once, right?

Well, this is where the event loop comes in. Think of it as a first-in-first-out task queue, or FIFO Queue. A FIFO queue means that every new task goes to the back of the line, and waits its turn to be executed, just like when you go to the grocery store and have to wait in line.

It kinda looks like this:

- Refresher on JavaScript callbacks.
Callback functions are probably the most widely used functional programming technique in JavaScript
A callback function, also known as a higher-order function, is a function that is passed to another function (let’s call this other function “otherFunction”) as a parameter, and the callback function is called (or executed) inside the otherFunction.
- Let's go back to the grocery store analogy real quick. You're stuck behind a guy, lets call him Bob. You can't cut Bob in line, because he was there before you and that's not how waiting in line works. When it's Bob's turn to be checked out, he realized that he forgot the ice cream that he promised his wife. Obviously can't go home without that, right? So he leaves all of his stuff at the register and goes to get the ice cream, leaving you stranded while you wait for Bob and his ice cream. Bob is now what we call a blocker.

Remember how Node.js servers can only process one task at a time? Grocery store checkouts are the same way. Imagine for a second though that Bob's cart got put to the side with all of his stuff still in it, and you were able to check out while Bob runs to grab the ice cream. When Bob comes back with his ice cream, he gets back in line and finishes checking out when it is his turn again.

That's what the event loop does for you. When a blocking task gets fired, it gets put to the side while everything else continues executing. When the blocking task is done, it calls back and says "Hey, I'm ready to work again!"
Reference: https://www.timcosta.io/the-node-js-event-loop/ 

--
GO BACK TO SLIDE
--

I bet it makes a bit more sense now. The event queue is the grocery store line, where each function (person) is waiting to be processed (checked out). If there is something that would be a blocker, like Bob and his ice cream or someone else's server that needs to respond to you, it gets back in line when it is done instead of holding everything up.

This is what makes Node such a quick framework. Instead of getting stuck waiting for a database or cache or whatever to respond, Node will keep processing other peoples requests and will come back to yours when you are done.

Hopefully this has helped you understand the Node Event Loop a little bit more, and understand why nearly everything in Node has a callback. You don't want to be stuck waiting in line for Bob to get his ice cream. You want Bob to get back in line when he comes back with his ice cream.

## 21 Node architecture: What lies under the hood?
- Node runs on processes and appears multi-threaded even though it is single-threaded. It is said to run asynchronous operations.
- Node is built on Google V8 engine, which is written in C++.

## 22. Questions 

## 23. Node module

## 24. Node module demo

## 25. Setting up

## 26. greeting.js

## 27. main.js

## 28. Your first Node module!

## 29. NPM (Node Package Manager)

## 30. Bloc resources & Next Steps