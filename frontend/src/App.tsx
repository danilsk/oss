import React, { useEffect, useState } from "react";

function App() {
  const [dataFromServer, setDataFromServer] = useState<string[]>();
  useEffect(() => {
    fetch("/api/test")
      .then((res) => res.json())
      .then((data) => {
        setDataFromServer(data);
      });
  }, []);

  return (
    <div className="App">
      {dataFromServer ? dataFromServer.join(", ") : "...loading"}
    </div>
  );
}

export default App;
