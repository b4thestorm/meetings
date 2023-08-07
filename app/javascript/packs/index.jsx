// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import { render } from 'react-dom'
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Home from '../components/home'
import Signup from '../components/signup'


document.addEventListener('DOMContentLoaded', () => {
  render(
    <Router>
      <Switch>
        <Route path="/" exact component={Home} />
        <Route path="/sign_up/:type" component={Signup}></Route>
      </Switch>
    </Router>,
    document.body.appendChild(document.createElement('div')),
  )
});
