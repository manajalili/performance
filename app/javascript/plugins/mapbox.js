// import mapboxgl from 'mapbox-gl';


const location = document.querySelector('.list-unstyled');
const form = document.querySelector("#location");
const address = document.querySelector("#address");

form.addEventListener("submit", (e) => {
  console.log(address.value);
  e.preventDefault();
  location.innerHTML = '';
  fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${address.value}.json?access_token=pk.eyJ1IjoibWFuYWpsbCIsImEiOiJjazZrbG1sZXUwMGhhM2RsYWU4emZkMjAxIn0.2L-RxLkhWL7pGw4IqnL6XA`)
    .then(response => response.json())
    .then((data) => {
      const coordinates = `<li>${data.features[0].geometry.coordinates}</li>`;
      const longitude = data.features[0].geometry.coordinates[0];
      const latitude = data.features[0].geometry.coordinates[1];
      location.insertAdjacentHTML("beforeend", coordinates);

      mapboxgl.accessToken = 'pk.eyJ1IjoibWFuYWpsbCIsImEiOiJjazZrbG1sZXUwMGhhM2RsYWU4emZkMjAxIn0.2L-RxLkhWL7pGw4IqnL6XA';
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v9',
        center: [longitude, latitude],
        zoom: 12
      });

      new mapboxgl.Marker()
        .setLngLat([longitude, latitude])
        .addTo(map);
    });
});

