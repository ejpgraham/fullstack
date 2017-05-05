import React from 'react';
import { Provider } from 'react-redux';
// import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import {
  BrowserRouter as HashRouter,
  Route,
  Link
} from 'react-router-dom';
import App from './app';



const Root = ({ store }) => {
  return(
  <Provider store={ store }>
    <HashRouter>
      <Route path="/" component={ App } />
    </HashRouter>
  </Provider>
  );
};

export default Root;
