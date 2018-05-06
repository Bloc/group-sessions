
# Redux

* What is Redux
* Installation
* App.js setup
* createStore
* Provider
* Reducers
* Workflow


# What is Redux

Redux is a tool that allows you to create React apps that use a single state object for all components. Redux forces you into a specific workflow when creating React apps. You need to know the workflow to build apps with Redux.

## Warning

In my opinion, Redux is not easy to learn or easy to teach. 

# Install

1. Install create-react-app and create a new project
2. cd into the new project and run <code>npm install redux --save</code> and then <code>npm install react-redux --save</code>

# Setup of App.js

In your App.js file replace the code with the following:

```
import React, { Component } from 'react';
//import PlayButton from './components/PlayButton';

//______________________________________________BEGIN redux imports 

import {createStore} from 'redux';
import {Provider} from "react-redux";
import combineReducers from "./reducers"//_____We need to create this file

//______________________________________________END redux imports 


const store = createStore(combineReducers);//__Object store

class App extends Component {
  
  render() {

    return (
      <Provider store={store}> 
          <div className="App">

              {/* Components go here */}

          </div>
      </Provider>              
    );
  }
}

export default App;

```


# Explanation of Code



## Provider

This component is what allows all child components to inherit the global state object that is returned from the <code>createStore</code> method. 

## Create Store

The <code>createStore</code> method combines reducers in different files into a single object that is used for your entire application. 

## Reducers
In Redux,  a reducer is a pure function that returns an object. The object that is returned is a portion of your applications total state. Reducers takes two arguments - the previous state and an *action*. Reducers are used with *actions* to facilitate state updates. You will learn more about *actions* later. For now, the important thing to know is that reducers are functions that return an object that is a portion of your applications total state and that all reducers get combined into one object in App.js using <code>createStore</code>

### Organizing Reducers
Each reducer is placed in its own file and all reducer files are placed in a folder named reducers. All reducers are imported into index.js and combined into a single reducer that is used in App.js. 

#### You will now write code to combine reducers

Create a folder named reducers and a file named index.js.

<code>src/reducers/index.js</code>

In <code>index.js</code> copy the following code:

```
import { combineReducers } from 'redux'

export default combineReducers({
  
})
```


The previous code is a template that is used to combine reducers from different files. As you build your application and create reducers the end result will look similar to the following example.

```
import { combineReducers } from 'redux'
import someReducerOne from './one'
import someReducerTwo from './two'
import someReducerThree from './three'

export default combineReducers({
  someReducerOne,
  someReducerTwo,
  someReducerThree
})

```

Reducers are combined and made available to all child elements of the Provider.

<code>App.js</code>

```
const store = createStore(combinedReducers);//__Object store

class App extends Component {

  render() {

    return (
      <Provider store={store}> 
          <div className="App">

           {/* All reducer-objects are combined into an object named store */}

          </div>
      </Provider>              
    );
  }
}

```


# Workflow
When working with redux the workflow differs from a non-Redux React application. To demonstrate the workflow and remaining Redux concepts you will create a single component that contains a button to toggle between true and false Boolean values. 

### Create a Component

In <code>App.js</code> reference a component named <code>Playbutton</code>

```
import Playbutton from './components/Playbutton';

...

<Provider store={store}>
    <div className="App">
        <Playbutton/>
    </div>
</Provider>

```

Create the component in <code>src/components/PlayButton.js</code>

```


import React, { Component } from 'react';
import {connect} from 'react-redux';

class PlayButton extends Component {
  render() {
    return (
      <div>
           <button>Click me</button>
      </div>
    );
  }
}

export default PlayButton

```



# Control Flow
You are now going to write code that is Redux specific. The following diagram describes the control flow of the code that you will write. Use this diagram as a reference while you learn Redux. Keep in mind that the diagram describes the order of the code as it is *executed*. The diagram does not describe the order that you will write code.


```
// Acronym: MARS MD

User Event (button clicks etc..)  -> mapDispatchToProps -> actionCreator -> 
Reducer -> state-is-updated -> mapStateToProps -> DOM rerender

```


# Set Initial State

The first thing you need to do for any component is to set the initial state of the feature that you are working on. You are presently working on a button to toggle between Boolean values and you will set the initial state of this feature. This is done in the file that contains the reducer. For the PlayButton component you will create a a file named playstate_reducer.js. 

<code>src/reducers/playstate_reducer.js</code>

```

//_________________________BEGIN initial state

const initialState = {
  isPlaying:false
}


//_________________________END initial state

```

The reducer will reference this state. Add the reducer code to the file below the initial state object.

```


//_________________________BEGIN initial state

const initialState = {
  isPlaying:false
}


//_________________________END initial state


//_________________________BEGIN reducer

export default function playToggle (state = initialState, action) {

    if (action.type === "TOGGLE_PLAY") {

        if (state.isPlaying) {
            return Object.assign({}, state, { isPlaying: false})
           
        } else {
            return Object.assign({}, state, { isPlaying: true})
        }
    }

    return state
}

//_________________________END reducer

```


The above code can be described as follows:

1. An initial state is set.
2. The reducer takes two arguments - the initial state and an object named <code>action</code>.
3. The reducer returns an updated state object that is based on the value of a property named type of the action object. In this case the reducer is checking if the type is assigned "TOGGLE PLAY". 


Another way that you can look at the relationship between reducers and actions is one where reducers treat actions as custom events. In the previous code you might look at the reducer as *listening* for a TOGGLE PLAY *event* and updating the state when it is fired.

Reducers *never* change your initial state object. Reducers return a *new* object with an updated state.

# Combine the Reducer

In reducers/index.js write the following code to combine the reducer into your store object.

```
import { combineReducers } from 'redux'
import playToggle from './playstate_reducer'

export default combineReducers({
  playToggle
})
```


# Redux Boiler Plate Code For Components

To use components with Redux they need to be structured in a specific way.
To do this you will need to learn to use the following functions.

* <code>mapDispatchToProps</code>

This is where the methods for you component will go. 

* <code>dispatch()</code>

The dispatch method is used to dispatch actions and trigger state changes to the store. It is used with <code>mapDispatchToProps</code>

* <code>mapStateToProps</code>

This returns the current (and any updated) state to your component

* <code>connect()</code>

This connects <code>mapDispatchToProps</code> and <code>mapStateToProps</code> to your component


# Creating a Method to Toggle State

Update your component to look like the following example:

```

import React, { Component } from 'react';
import {connect} from 'react-redux';

//_____________________________________BEGIN mapStateToProps
const mapStateToProps = state =>({
    isPlaying:state.playToggle.isPlaying  // state is available via the "store" in App.js
});

//_____________________________________END mapStateToProps



//_____________________________________BEGIN mapDispatchToProps

const mapDispatchToProps = (dispatch)=>{  // attach all your methods here
    return{
       togglePlayAction:  function(){ console.log("test") }
   }
}

//_____________________________________END mapDispatchToProps

class Playbutton extends Component {
  render(){

    return(
         <div>
            <div>{this.props.isPlaying + ""}</div>
            <button onClick={this.props.togglePlayAction}> CLICK ME </button>
         </div>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(Playbutton);

```

## Explanation

<code>mapStateToProps</code> gives you access to the store object in App.js.  In the returned JSX the data is rendered via <code>this.props.isPlaying</code>


The JSX button has <code>this.props.togglePlayAction</code> assigned to the onClick event listener. The <code>togglePlayAction</code> method is on an object returned from <code>mapDispatchToProps</code>. For now, <code>togglePlayAction</code> is simply logging some text to the console. 


The connect() method connects mapDispatchToProps and mapStateToProps to your component and returns a new component. 


## Create a Method to Toggle isPlaying State

To create methods that do useful work you need to understand the relationship between mapDispatchToProps, actions and reducers.

Lets revisit that part of the control flow diagram:

```
mapDispatchToProps -> actionCreator -> Reducer -> state-is-updated

```

The methods you use in mapDispatchToProps are expected to dispatch an action. An action is simply a function that returns an object that has a type property and a state change. The function is called an "action creator".

### Create Your First Action Creator

Create a new file src/actions/TogglePlayActionCreator.js. 

Copy the following code into it.

```
export const togglePlayActionCreator = function(){
  return {type: "TOGGLE_PLAY", isPlaying: true}    // <-- type property and state change
};

```


At the top of your component file import the function and update mapDispatchToProps to invoke the action.

src/components/PlayButton.js

```


import React, { Component } from 'react';
import {connect} from 'react-redux';
import {togglePlayActionCreator} from "../actions/TogglePlayActionCreator" // <-- Reference action


const mapStateToProps = state =>({          
    isPlaying:state.playToggle.isPlaying   
});


const mapDispatchToProps = (dispatch)=>{  
    return{
       togglePlayAction:  ()=> dispatch(togglePlayActionCreator())  // <--dispatch action
   }
}


class Playbutton extends Component {
  render(){
       console.log(this.props);
    return(
         <div>
            <div>{this.props.isPlaying + ""}</div>
            <button onClick={this.props.togglePlayAction}> CLICK ME </button>
         </div>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(Playbutton);


```


# Revisit Control Flow Diagram

```
User Event (button clicks etc..)  -> mapDispatchToProps -> actionCreator -> 
Reducer -> state-is-updated -> mapStateToProps is updated -> DOM rerender

```

After the action is dispatched the reducer checks for it and returns an updated state object. The <code>mapStateToProps</code> recognizes this and any JSX that references state is updated.


# Capturing Form Input

You are now going to learn how to capture form input by writing a single component that is a todo list application.

<code>components/From</code>

```
import React, { Component } from "react";
import { connect } from "react-redux";


const mapDispatchToProps = dispatch => {
  return {
    captureFormInput: (e, data) => {   // dispatch action
      e.preventDefault();
      console.log(data); // undefined
    }
  };
};

class Form extends Component {
  constructor(props) {
    super(props);

    this.state = {
      data: ""
    };

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(e) {
    this.setState({
      data: e.target.value
    });
  }

  render() {
    return (
      <div>
        <form onSubmit={e => this.props.captureFormInput(e, this.state.data)}>
          <input
            type="text"
            value={this.state.data}
            onChange={this.handleChange}
          />
          <input type="submit" />
        </form>
      </div>
    );
  }
}



export default connect(null, mapDispatchToProps)(Form);

```

The previous code intentionally does not include an <code>action</code> or <code>reducer</code>. You will now add an action and reducer.

### Create Action

<code>src/actions/createTodoActionCreator.js</code>

```

export const createTodoActionCreator = function(todo){
  console.log(todo);
  return {type:"CREATE_TODO", todo:todo};
};

```

### Incorporate Action into Component

```

import React, { Component } from "react";
import { connect } from "react-redux";
import {createTodoActionCreator} from "../actions/createTodoActionCreator" /* import action creator */

const mapDispatchToProps = dispatch => {
  return {
    captureFormInput: (e, data) =>{
      e.preventDefault()
      console.log(data);

     {/*______________________________________BEGIN dispatch data to action */}

      dispatch(createTodoActionCreator(data))

     {/*______________________________________END dispatch data to action */}

    }

  };
};

class Form extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: ""
    };

    this.handleChange = this.handleChange.bind(this);
    this.clearFormField = this.clearFormField.bind(this);
  }

  handleChange(e) {
    this.setState({
      data: e.target.value
    });
  }

  clearFormField(){
      this.setState({
      data: ""
    });
  }



  render() {
    return (
      <div>
        <form onSubmit={(e) => {

          this.props.captureFormInput(e, this.state.data); //___capture form input
          this.clearFormField() //______________________________clear form

         }} >
          <input
            type="text"
            value={this.state.data}
            onChange={this.handleChange}
          />
          <input type="submit" />
        </form>
      </div>
    );
  }
}





export default connect(null, mapDispatchToProps)(Form);


```

### Create the Reducer


```
const initialState = {
  todos:[]
}

export default function addTodo (state = initialState, action) {
    console.log(action);
    if (action.type === "CREATE_TODO") {

         return Object.assign({}, state, { todos: [...state.todos, { todos: {todo: action.todo}}]}) 
               
    }

    return state
}

```

### Connect the Reducer to Store

```
import { combineReducers } from 'redux'
import playToggle from './play_toggle_reducer'
import captureFormInput from './capture_form_input_reducer' // Import reducer

export default combineReducers({
  playToggle,
  captureFormInput //__________________________________________connect to store
})

```


At this point you are able to input data into the form and store the submitted data to the store. You now need to retrieve the data and present it to the user. The code for this is here:


```
import React, { Component } from "react";
import { connect } from "react-redux";
import {createTodoActionCreator} from "../actions/createTodoActionCreator" 


const mapDispatchToProps = dispatch => {
  return {
    captureFormInput: (e, data) =>{
      e.preventDefault()
      console.log(data);

      dispatch(createTodoActionCreator(data))

    }
  };
};

//_____________________________________________BEGIN get relevant portion of state

const mapStateToProps = state =>({
    todoList:state.captureFormInput.todos
});

//_____________________________________________END get relevant portion of state


class Form extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: ""
    };

    this.handleChange = this.handleChange.bind(this);
    this.clearFormField = this.clearFormField.bind(this);
  }

  handleChange(e) {
    this.setState({
      data: e.target.value
    });
  }

  clearFormField(){
      this.setState({
      data: ""
    });
  }



  render() {

    //_________________________________________________BEGIN loop and get todos

    let todos = this.props.todoList.map((val,index)=>{
            return <li key={index}>{val.todos.todo}</li>    
    }) 

    //_________________________________________________END loop and get todos



    return (
      <div>
        <form onSubmit={(e) => {

          this.props.captureFormInput(e, this.state.data); 
          this.clearFormField() 

         }} >
          <input
            type="text"
            value={this.state.data}
            onChange={this.handleChange}
          />
          <input type="submit" />
        </form>

        {/*__________________________BEGIN display todos */}

        <ul>

          {todos}

        </ul>

        {/*___________________________END display todos */}

      </div>
    );
  }
}




export default connect(mapStateToProps, mapDispatchToProps)(Form);  // add mapStateToProps

```


# Using the React-Form Module

