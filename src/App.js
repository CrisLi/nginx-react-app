import logo from './logo.svg';
import { useState } from 'react';
import './App.css';

function App() {

  const [data, setData] = useState(null);

  const fetchData = async(e) => {
    const response = await fetch("/api/users/1");
    const json = await response.json();
    setData(json);
  };

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <pre>
          {JSON.stringify(data, 2, ' ')}
        </pre>
        <div>
          <button onClick={fetchData}>Fetch Data</button>
        </div>
      </header>
    </div>
  );
}

export default App;
