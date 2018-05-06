
# React Tutorial

These notes attempt to distil the totality of the React library down to a collection of foundational concepts that you need to build basic React applications. The provided code examples and explanations are intended to be as minimalistic as possible.

* What is React?
* Setup (non-Node.JS)
* Components
* Nesting Components
* Component Specific CSS
* CSS Classes
* Props
* State
* Rendering Array Data from State
* Events
* Event Listener Methods that Take Arguments
* Form Input
* How to Invoke a Parent Component Method from a Child Components JSX
* Lift State Up
* Extras


# What is React ?

React is a library that you use to build user interfaces for web and mobile applications.


# Setup

To get started you must bootstrap (set up) the application. The simplest way to get started is the following:

**HTML**

<code> index.html </code>

```
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>App</title>
    <script src="https://fb.me/react-0.14.3.js"></script>
    <script src="https://fb.me/react-dom-0.14.3.js"></script>
    <script src="https://unpkg.com/babel-standalone@6.15.0/babel.min.js"></script>
    <script type="text/babel" src="js/app.js"></script>
    <link rel="stylesheet" href="css/app.css">
</head>

<body>
    <div id="root"></div>
</body>

</html>
```


**JavaScript** 

<code>js/app.js</code>

```
ReactDOM.render(
    <div>
      "hello world"
    </div>,
    document.getElementById('root')
)

```

Open your HTML file and you will see "hello world" rendered from the DOM.

# Components

React apps are composed of components. Components are JavaScript classes or functions that return JSX code. JSX is a React-specific language that looks identical to HTML. When you run a React application, JSX is rendered to the DOM as HTML.

Every component class needs to have a render method that contains a return statement.
 
Here is an example:

```
class App extends React.Component{

     render(){         //_____Render method

         return(       //_____Return statement
          <div>
              <p>Hello world from a component name App</p>
          </div>
         )

     }
}

ReactDOM.render(
    <div>
      <App/>
    </div>,
    document.getElementById('root')
)

```

The returned HTML/JSX must contain a parent element. In the following code the parent element is a div.

```
 return(

     <div>
         <p>Hello world from a component named App</p>
     </div>
 )

```


# Nesting Components

You build applications in React by nesting components. In the following code a component named "Menu" returns a list. The Menu component is returned *as a child* from the App component. The App component is rendered from <code>ReactDOM.render()</code>

```
class Menu extends React.Component{
      
      render(){
        return(
           <div>
             <ul>
             <li>Item-1</li>
             <li>Item-2</li>
             <li>Item-3</li>
              
             </ul>
           </div>
        )
      }
}

class App extends React.Component{

     render(){

         return(
          <div>
              <Menu/>
          </div>
         )

     }
}

ReactDOM.render(
    <div>
      <App/>
    </div>,
    document.getElementById('root')
)
```

# Component Specific CSS
React gives developers the option to create CSS that is specific to individual components.  

```
class Menu extends React.Component{
      
      render(){
        const listStyle = {
              backgroundColor:"orange",
              width:"100",
              height:"30",
              outlineStyle:"solid",
              display:"inline-block"
        }

        return(
           <div>
             <ul>
             <li style={listStyle}>Item-1</li>
             <li style={listStyle}>Item-2</li>
             <li style={listStyle}>Item-3</li>
             </ul>
           </div>
        )
      }
}


```

# CSS Classes
If you want to add classes to your HTML elements you don't use the class keyword. You use ```className```.

```
 <div className="some-class"></div>

```


# Props

It is helpful to look at at each component class as a function that renders HTML when invoked.
Like non-React functions, components can be invoked with arguments. React calls component arguments *props*.

The following code uses props to set the CSS background color value to blue.


```

class Menu extends React.Component{
   constructor(props){
     super(props);
   }
      
      render(){
        const listStyle = {
              backgroundColor:this.props.tabcolor,
              width:"100",
              height:"30",
              outlineStyle:"solid",
              display:"inline-block"
        }

        return(
           <div>
             <ul>
             <li style={listStyle} >Item-1</li>
             <li style={listStyle}>Item-2</li>
             <li style={listStyle}>Item-3</li>
              
             </ul>
           </div>
        )
      }
}

class App extends React.Component{

     render(){

         return(
          <div>
              <Menu tabcolor="blue"/>
          </div>
         )

     }
}


```

Any arguments (props) that you pass to components are stored on the props object. The props object is immutable and can not be changed. Attempting to change <code>this.props</code> results in an error.




You can set default props using this syntax:

```
Menu.defaultProps = {
  tabcolor:"green"
}

```


# State


When building non-React JavaScript applications the way you store state is left up to you. React limits this freedom and requires developers to store state on an object named <code>this.state</code>. In the following example, <code>this.state</code> has a property named items that is assigned an array containing a single object. The data assigned to the property named text is referenced in the JSX and its contents is rendered to the DOM. 


```

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      items: [{text:"data"}]
    };
  }



  render() {
    return (
       <div>
          {this.state.items[0].text}
        </div>
    );
  }
}


ReactDOM.render(
    <div>
      <App/>
    </div>,
    document.getElementById('root')
)

```
 
# Rendering Array Data from State


It is common to loop through array data stored in <code>this.state</code> and present the contents to the user. The following code shows how to do this. Pay attention to the <code>key</code> attribute of the <code>li</code> element. JSX code that is generated by iterating over an array must have a key attribute with a unique value for each item. If you do not set the key attribute properly React will throw an error. Setting <code>key</code> to the array index value (the second argument of the map method) is a valid option.

```
class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      items: [{text:"data-1"},{text:"data-2"}]
    };
  }

  render() {
    return (
       <div>
         <ul>

          {
            this.state.items.map((val,index)=>{
              return <li key={index}>{val.text}</li>
            })

          }
          
          </ul>
        </div>
    );
  }
}

```



# Events
To build React apps you need to know how to assign methods to event listeners and invoke them. The following example shows how to assign a method to a click event listener.

```

class App extends React.Component {
    constructor(props) {
        super(props);

    }

    sayHello() {
        console.log("hello there!")
    }


    render() {
        return (
            <div>

                <span onClick = {this.sayHello}>Click me</span>

            </div>
        )

    }
}

```



# How to Set State

When you set state in React you do not focus on changing <code>this.state</code> directly. Instead, you use a method called <code>this.setState</code>.
The React documentation says the following:


>NEVER mutate this.state directly, as calling setState() afterwards may replace the mutation you made. Treat this.state as if it were immutable.



When this.setState is invoked it <u>always</u> triggers a rerender of the components JSX. The following code is an example of how to change state. 

```
class App extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            item:"some data",
            someOtherItem:"I am some other data"
        }

        this.sayHello = this.sayHello.bind(this); // bind
    }

    sayHello() {

          this.setState({
             item: "some new data"
          })
    }


    render() {
        return (
            <div>

                <span onClick = {this.sayHello}>Click me</span>
                <div> {this.state.item} </div>

            </div>
        )

    }
}


```


The following example demonstrates how to change the state of an array.

```
class App extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            items:[{text:"Hello world"}]
        }

        this.sayHello = this.sayHello.bind(this); 
    }

    sayHello() {
         
          this.setState({
             items: [...this.state.items, {text:"Bye Bye world"}]
          })
    }


    render() {
        return (
            <div>

                <span onClick = {this.sayHello}>Click me</span>
              
                {
                    this.state.items.map((val,index)=>{
                        console.log(val.text);
                       return <li key={index}> {val.text}</li>
                    })
                }

            </div>
        )

    }
}
```

## Binding Methods

Any methods that change state via event listeners needs to be bound to the component. To do this you use the bind method. 

```
  this.sayHello = this.sayHello.bind(this); // bind
```



# Event Listener Methods that Take Arguments

To assign a method that *takes arguments* to an event listener you need to wrap the method in a callback. You do this using an arrow function.


```
 sayHello(item){
    
     sayHello() {

         this.setState({
             items: [...this.state.items, {text:item}]
         })
    }
     
  }

```

```
     <span onClick={() => this.sayHello("some new data")}>Click me</span>

```


# Capturing Form Input
## Suggested Way Per the React Documentation

```
class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
        value: '',
        data:''

  };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({value: event.target.value});
  }

  handleSubmit(event) {
    event.preventDefault();
    this.setState({data: this.state.value});
    this.state.value = ""
    
  }

  render() {
    return (
        <div>
          <form onSubmit={this.handleSubmit}>
            <label>
              Name:
              <input type="text" value={this.state.value} onChange={this.handleChange} />
            </label>
            <input type="submit" value="Submit"/>
          </form>
          {this.state.data}
        </div>
    );
  }
}

ReactDOM.render(
    <div>
      <App/>
    </div>,
    document.getElementById('root')
)
```


## Using ref to Capture Form Input
The following code shows how to capture form input using the <code>ref</code>attribute

```
class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      items: [{text:"data-1"},{text:"data-2"}]
    };
    this.newTodo = this.newTodo.bind(this);
  }

  newTodo(event){
    event.preventDefault()
    this.setState({
        items: [...this.state.items, {text:this.data.value}]
    })

    this.data.value = "";
  }


  render() {
    return (
       <div>

            <form onSubmit= {this.newTodo}>
            <input type="text" ref={(value)=> this.data = value}/>
            <input type="submit"/>
            </form>


         <ul>

          {
            this.state.items.map((val,index)=>{
              return <li key={index}>{val.text}</li>
            })

          }

          </ul>
        </div>
    );
  }
}

```


In the previous example a form element has an <code>onSubmit</code> event listener assigned a method named <code>newTodo</code> and it is invoked when the form is submitted. To capture the content of the input element you use an attribute specific to React named <code> ref </code>. In the code below the <code>ref</code> attribute is assigned curley braces and the code inside of the curley braces is a callback function. The <code> value </code> is an arbitrary variable name and the code will work irrespective of what you call it. The property <code>this.data</code> is used to capture the input data. 

```
 <input type="text" ref={(value)=> this.data = value}/>
```


The content of the input field is stored on <code> this.data.value </code>.

```
this.setState({
        items: [...this.state.items, {text:this.data.value}]
    })

```


# Triggering a parents method from a child component

Sometimes you will want to trigger a parents method via an event listener set on a child component. To do this you must:

1. Pass in the parent method as a prop to the child 
2. Assign the prop to an event listener on the child. 

Here is an example:


```

class Child extends React.Component {
  constructor(props) {
    super(props);

  }

  render() {
    console.log(this.props.myMethodPassedAsProps);
    return (
       <div>
          <div onClick={this.props.myMethodPassedAsprops}> click me </div>
        </div>
    )
  }
}


class App extends React.Component {
  constructor(props) {
    super(props);

  }

  someMethod(){
    console.log("you clicked me");
  }

  render() {
    return (
       <div>
         <Child myMethodPassedAsprops = {this.someMethod}/>
        </div>
    );
  }
}

ReactDOM.render(
    <div>
      <App/>
    </div>,
    document.getElementById('root')
)
```



A common use for this is to do what the React documentation calls "Lifting state up". 

### Lifting State Up
"Lifting state up" is when you pass state from a child element and store it on a parent element. In the following example a form on a child element has its state "lifted up" and stored on the parent element.

```
class Child extends React.Component {
  constructor(props) {
    super(props);
     this.state = {
        value:" ",
     }
     this.handleChange = this.handleChange.bind(this)
  }

 handleChange(event){
    console.log(event.target.value);
    this.setState({value: event.target.value});

 }


  render() {

    return (
       <div>
          <form onSubmit = {(event)=> { 
              this.props.formSubmit(event, this.state.value); 
              this.setState({value:""})
            }}>

          <input type="text" onChange={this.handleChange} value = {this.state.value}/>
          <input type="submit"/>
          </form>
        </div>
    )
  }
}


class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      formData:""
      
    }

    this.formSubmit = this.formSubmit.bind(this)

  }

  formSubmit(event, data){
    event.preventDefault()
    console.log(data);
    this.setState({
      formData:data
    })

  }



  render() {
    return (
       <div>
         <Child formSubmit = {this.formSubmit} />
        </div>
    );
  }
}

ReactDOM.render(
    <div>
      <App/>
    </div>,
    document.getElementById('root')
)

```


You can read more here: https://reactjs.org/docs/lifting-state-up.html


# Extras




## Create-React-App
Create React App is a React package created by Facebook. To install it you need to have Node.js installed. 

<code>https://www.npmjs.com/package/create-react-app</code>


## ES6 Imports and Exports

When working in the Node.js ecosystem you reference files using the ES6 module loading syntax.

### Example

**items.js**

```
export function greeting(){
    return " hi there "
}


export const name = "Bob Whatever"

export let names = ["Bob","Joe","Cindy"]

export default "the default content"
```

**app.js**

```
import  content, {greeting, name, names} from './items';
```


Your components go in a folder named component and you import them into one another as needed.



## React Router

React router lets you write your React app as a single page application.

To install: <code>npm install -S react-router-dom</code>

### Example


**index.js**

```
import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter } from 'react-router-dom';
import './index.css';
import App from './App';
import registerServiceWorker from './registerServiceWorker';

ReactDOM.render(

    <BrowserRouter>
      <App />
    </BrowserRouter>, 

  document.getElementById('root'));
registerServiceWorker();

```


**App.js**


```
import React, { Component } from 'react';
import { Route, Link } from 'react-router-dom';
import Home from './components/Home';
import Page from './components/Page';


class App extends Component {
  render() {
    return (
      <div className="App">
          <nav>
    
          </nav>
          <main>
          <Route exact path="/" component={Home} />
          <Route path="/page" component={Page} />
          </main>
      </div>
    );
  }
}

export default App;

```

**src/components/Home.js**

```
import React, { Component } from 'react';

class Home extends Component {
  render() {
    return (
      <div>
         The Home component
      </div>
    );
  }
}

export default Home

```

**src/components/Page.js**

```
import React, { Component } from 'react';

class Page extends Component {
  render() {
    return (
      <div>
         The Page component
      </div>
    );
  }
}

export default Page

```