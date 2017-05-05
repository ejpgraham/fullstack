import React from 'react';
import GreetingContainer from './greeting/greeting_container';

const App = ({ children }) => {
  return (
    <div>
      <header>
        <h1>PhotoBomb!</h1>
        <GreetingContainer />
        { children }
      </header>
    </div>
  );
};

export default App;
