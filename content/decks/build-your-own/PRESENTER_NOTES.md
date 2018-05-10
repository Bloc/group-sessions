# What is an API?

## 1. Quick poll:
Ask questions to engage students:
- Raise hands: Module 1, 2, 3, specialization
- Introduce yourself: i) name, ii) city you're based in, and iii) why did you come to this lecture/ workshop? What are you hoping to get out of it?

APIs run the web. We live in an "API economy."

Every time you go to a popular website to order food, get groceries delivered, get an Uber/ Lyft, or chat with your friends or coworkers on messenging apps like Slack, you are making use of APIs.

Many of you want to **build your own app/ start your own business**. You will use popular APIs in your application. 

Previous workshop: What is an API? 
- Requests from folks to build their own app.
- Next: how to build your own business?

+ Review: how APIs work
+ Steps to use APIs in your next project
+ Example code: Examination of popular apps/ how they're built > full folder structure view: Spotify app (BlocJams)

## 2. A bit about my background

## 3. Lecture overview:
I. Review: what are APIs & how do APIs work?
II. How to use APIs to build your own app
III. Popular web apps built: Node, React, Uber, Slack, Spotify, Google Maps APIs

## 4. Expectations
- Participation (I will call on random folks)/ questions
- Feedback Survey for more relevant content.

## 5. Slides & Feedback Survey
Please fill out the Feedback Survey so we can update content to cater to what you'd like to learn most.
--
Questions?
--

## 6. I. What is an API?
- Application Programming Interface (API)
- A software intermediary that allows two applications to talk to each other.
- e.g. Facebook, Twitter or Uber APIs. 
> **Facebook Messenger** integrates Google Maps API so you can share your location in a message.
> **Twitter API** allows you to put a live feed of tweets in your blog.
> **Uber API** allows your eCommerce clients to request a ride & get to your business faster. In fact, Uber, being serious about growth, gives you $5 for every new rider that signs up in your app.
- An interface sits on top of complicated systems and simplifies certain tasks, a middleman that saves you from needing to know all details of what's happening under the hood.


## Importance of APIs. API economy
- In today's world, everything is interconnected.
- 90% of data has been created in the last 2 years.
- API = interface that enables 2 applications to exchange data among each other. 
- 75B internet connected devices by 2020.
- 1 particularly key role APIs plays in future: connect to The Internet of Things.
- Business data can be used for many purposes. Business data becomes valuable, Cambridge Analytica
- Facilitates applications talking to one another.
> Briefly mention API keys?

> **Data** is one of the most valuable assets a business has. Companies are using data to provide more personalized, tailored experiences to their customers, analyzing customer and operational behavior to make better decisions, and providing web and mobile apps to their customers, employees, and partners.

## API = the new currency

”In the world of cloud computing, API’s are the new currency”

– S.Somasegar, VP of Microsoft’s developer division.

> APIs make it easier to **integrate** and **connect people, places, systems, data, and algorithms, create new user experiences, share data and information, authenticate people and things, enable transactions and algorithms, leverage third-party algorithms, and create new product/services and business models**.

Kristin R. Moyer, VP at Gartner, said “The API economy is an enabler for **turning a business or organization into a platform**. Platforms multiply value creation because they enable business ecosystems inside and outside of the enterprise to consummate matches among users and facilitate the creation and/or exchange of goods, services and social currency so that all participants are able to capture value.”

## API platforms in an interconnected world
- https://developer.uber.com/#products
https://uber-developers.news/ifttt-and-uber-open-up-a-new-category-of-automation-magic-ff8c9c2823e6 
- Light, thermostat, automation
- blink your lights when you Uber is arriving
- Turn off your lights when you leave home in an Uber
- When you're on your way home, set your Nest thermostat
** INSERT UBER API EXAMPLES **

------------------------------------------
## II. Review: how do APIs work?

## What is a web API? RESTful diagram.
- REST, or RESTful API
- To understand this you need to know that the HTTP protocol works on **request - response** method. When you visit/send a  request to a url you  send a request to the web server with certain **parameters**. The web server has defined a set of functions it needs to execute in this scenario. It does the required tasks and send some meaningful data as a **response** ( like json/xml in REST APIs).
- Request <> Response: a web API URL sends back something ugly designed to be useful to a computer.
https://schoolofdata.org/2013/11/18/web-apis-for-non-programmers/

## Example: CoinDesk API call
+ Response: ugly-looking chunk of plain text with no decorations, in JSON format.

## Use Postman to test API calls.
> Download Postman tool also.
5 million developers use Postman.
> Install JSON View Chrome extension

## How to work with API's JSON data
BLOC CHECKPOINT: CONSUMING APIS
https://www.bloc.io/checkpoints/2888?section_id=368 

1. Get the data back in desired format
2. Promises
3. Serve it up

## Use cases
1. Get information otherwise time-consuming to get.
2. Get information you can't get otherwise.
3. Automate apps that need live data (weather, Uber rides, messaging apps, live tweets)
4. As more direct interface for reading & writing data to a service.

> Google Maps and Open Weather APIs allow you a clean way to access the data you need w/o going in there and poke around (they won't let you anyway unless you work there).



------------------------------------------
## III. How to build your own app with popular APIs

1. I want some data from service X. Does service X have an API? Hooray, it does, and it’s free!
2. Look at the API documentation. Figure out if there is a URL that retrieves the kind of data you’re looking for. There is? Great!
3. Sign up for an API key if one is required.
4. Figure out what parameters you need to include in the URL in order to get the exact data you want.
5. Load the URL, parameters included, into your browser. Get back a response! If it didn’t work, go back to step 4.
6. Take that data and unpack it. For more on this, read XML and JSON.

- What kind of API is it?
- What data format is used in request?
- What kind of authorization is used/ required?
- What functions are available for me as developer?


## IV. Step-by-step guide to use APIs in your next project

## 1. Sign up for developer account 

https://beta.developer.spotify.com/ 
https://api.slack.com/getting-started 

## 2. Determine which API to use:
https://medium.com/slack-developer-blog/getting-started-with-slacks-apis-f930c73fc889 
- https://api.slack.com/web 

## 3. Read documentation & Retrieve list of URLs
> Get list of URLs you can use to retrieve data.
> These URLs can call many things, like _resources_ and _methods_ 
> Using them is called an _API request_ or _API call_.
> For each URL, there will be a page or section > explaining more details about how to use it.

## 4. Look at example apps/ featured use cases on the API website
> Spotify API examples: many
https://developer.spotify.com/web-api/code-examples/ 
> Slack API examples: many

TUTORIAL
- https://beta.developer.spotify.com/documentation/web-api/quick-start/

## Get an API key (if required)
- http://api.rottentomatoes.com/api/public/v1.0/movies.json?q=Skyfall 
- {"error":"Account Inactive"}
You need an API key
- http://api.rottentomatoes.com/api/public/v1.0/movies.json?q=Skyfall&apikey=krw98sa2
WHY
- Monitor your application's API usage 
- Might need paid accounts if exceed # API calls

## Side note: on rate limiting
Many APIs include limits on how many requests you can make per hour or per day in order to prevent you from overloading their servers. If you aren’t a programmer, these limits probably won’t be an issue. They are there to prevent you from automating a flurry of thousands of requests. For information on rate limits, see a particular API’s documentation. Note also that lots of APIs are free up to a certain rate limit and then charge you money if you want to exceed it.

## Figure out what parameters you need to include in the URL in order to get exact data you want.

## Test API calls. try out some basic HTTP requests to see if it works
> Download Postman: https://www.getpostman.com/
Postman makes API development simple. 
https://api.slack.com/methods/api.test 
> POSTMAN tutorial:
https://support.brightcove.com/use-postman-api-requests

https://schoolofdata.org/2013/11/18/web-apis-for-non-programmers/ 
DEMO: TWITTER API example calls

## Place them in your app.

## Stack Overflow, Google, example apps, communities when stuck.
https://api.slack.com/community

## Share with the world!
- Developer community is helpful & collaborative. 
- Post in Bloc Student Slacks #post-your-project or #osa, etc.




## SPOTIFY

## Step-by-step guide for Spotify
- Why do I need this API?
- Look at the API's page for guidance/ inspiration
https://api.slack.com/getting-started
https://medium.com/slack-developer-blog/getting-started-with-slacks-apis-f930c73fc889
- Look at available URLs/ API endpoints
https://api.slack.com/web#basics 
https://api.slack.com/events-api 
- 
- 
-
-

## Which API should I use?
- 

## Spotify API + React
https://medium.com/@jonnykalambay/now-playing-using-spotifys-awesome-api-with-react-7db8173a7b13

## Spotify API + Node
https://github.com/thelinmichael/spotify-web-api-node


## Storing your API key
- Public `git` repos accessible by anyone on the WWW.
- run, change your app, access your app's data
- Exposing your app's API key/ other sensitive info = avoided at all costs.

## How/ Where to store API keys
https://medium.freecodecamp.org/how-to-securely-store-api-keys-4ff3ea19ebda


------------------------------------------------


## Slack API
- POLL to engage class: who is not on Slack yet? You should be :)
- https://api.slack.com/ (OPEN UP)
- USE CASES: send messages, create simple workflows, build bots, set up internal tools, many more.
- Different APIs: Web API, Events API, Conversations API...
- Slack loves working with developers and startups.
For aspiring Entrepreneurs, a **FUND** to invest in your companies.
https://slack.com/developers/fund 

-------------------------------------------------

## UBER

## Uber API
- allow your customers to get to your business faster.
- request rides directly from the app
- restaurant food delivery
- google maps now uses Uber API

>> SLIDE: https://developer.uber.com/ 
>> SLIDE: https://developer.uber.com/docs/riders/ride-requests/tutorials/api/introduction 
Developer Dashboard -> sign up.

- API calls can be made to request info on available car types, driver location expressed in geo-coordinates, time estimates, estimated prices, user account history and activity.

- Uber has always been serious about **GROWTH**, API affiliate program gives **3rd party app developers $5** for every new customer.
https://techcrunch.com/2015/12/02/uber-ride-request-button/ (Since 2015)

EXAMPLES of Uber API
- https://github.com/lxe/uber-api-express-sample/blob/master/app.js 
- UBER RUSH:
https://github.com/mjk/uber-rush/blob/master/examples/simple.js




------------------------------------------------
## Next Steps & Additional Resources

Post in Slack #post-your-project channel



