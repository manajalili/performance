const form = document.querySelector("#location");
const city = document.querySelector("#city");
const all = document.querySelector(".border");
const image = document.querySelector("#image");
const location = document.querySelector("#header1");
const weather = document.querySelector("#header4");
const temprature = document.querySelector("#parag");
const feelslike = document.querySelector("#feelslike");

form.addEventListener("submit", (e) => {
  console.log(city.value);
  e.preventDefault();
  fetch(`https://api.openweathermap.org/data/2.5/weather?q=${city.value}&units=metric&appid=65a96098db32030e683e25c088180ad1`)
    .then(response => response.json())
    .then((data) => {
      console.log(data);

      location.innerText = data.name;
      weather.innerText = data.weather[0].description;
      temprature.innerText = data.main.temp;
      image.src = `http://openweathermap.org/img/wn/${data.weather[0].icon}@2x.png`;
      feelslike.innerText = data.main.feels_like;
    });
});
