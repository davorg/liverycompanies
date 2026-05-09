const cityCentre = [51.5155, -0.0922];

// Later :-)
// const hallIcon = L.icon({
//   iconUrl: "images/marker.png",
//   iconSize: [28, 40],
//   iconAnchor: [14, 40],
//   popupAnchor: [0, -36]
// });

const map = L.map("map", {
  maxBounds: [
    [51.50, -0.12],
    [51.53, -0.06]
  ],
  maxBoundsViscosity: 1.0
}).setView(cityCentre, 15);

L.tileLayer("https://tile.openstreetmap.org/{z}/{x}/{y}.png", {
  maxZoom: 19,
  attribution:
    '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

fetch("halls.geojson")
  .then(response => {
    if (!response.ok) {
      throw new Error(`Could not load halls.geojson: ${response.status}`);
    }

    return response.json();
  })
  .then(data => {
    const halls = L.geoJSON(data, {
      pointToLayer: (feature, latlng) => {
        return L.marker(latlng);
      },

      onEachFeature: (feature, layer) => {
        const { name, company, address, slug } = feature.properties;

        layer.bindPopup(`
          <h2>${name}</h2>
          <p>${company}</p>
          <p><i>${address}</i></p>
        `);
      }
    }).addTo(map);

    map.fitBounds(halls.getBounds(), {
      padding: [80, 80],
      maxZoom: 15
    });

    map.once("moveend", () => {
      map.setMinZoom(map.getZoom());
    });map.fitBounds(halls.getBounds(), {
      padding: [80, 80],
      maxZoom: 15
    });

    map.once("moveend", () => {
      map.setMinZoom(map.getZoom());
    });
  })
  .catch(error => {
    console.error(error);
  });
