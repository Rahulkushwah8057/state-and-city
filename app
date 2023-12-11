import React, { useState } from "react";

function App() {
  const [selectedState, setSelectedState] = useState(""); // Renamed selectState to selectedState
  const [selectedCity, setSelectedCity] = useState(""); // Added state for selected city
  const data = {
    Punjab: ["Ludhiana", "Patiala", "Amritsar"],
    Himachal: ["Una", "Mandi", "Kangra"],
    "Utter Pardesh": ["Lucknow", "Varanasi", "Saharnpur"],
  };

  // Event handler for state selection
  const handleStateChange = (event) => {
    const newState = event.target.value;
    setSelectedState(newState);
    setSelectedCity(""); // Reset selected city when state changes
  };

  // Event handler for city selection
  const handleCityChange = (event) => {
    const newCity = event.target.value;
    setSelectedCity(newCity);
  };

  return (
    <>
      <form>
        <label>Select state</label>
        <select value={selectedState} onChange={handleStateChange}>
          <option value="">Select a state</option>
          {Object.keys(data).map((state) => (
            <option key={state} value={state}>
              {state}
            </option>
          ))}
        </select>
        <label>Select City</label>
        <select value={selectedCity} onChange={handleCityChange}>
          <option value="">Select a city</option>
          {selectedState &&
            data[selectedState].map((city) => (
              <option key={city} value={city}>
                {city}
              </option>
            ))}
        </select>
      </form>
    </>
  );
}

export default App;
