import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Greetings from './Greetings'

const App = () => (
  <div className="App">
    <Router>
      <Routes>
        <Route path="/" element={<Greetings />} />
      </Routes>
    </Router>
  </div>
);

export default App;