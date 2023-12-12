

/**
 * API
 */
let date = new Date();
let day = date.getDate();
let month = '0' + (date.getMonth() + 1);
let year = date.getFullYear();
let currDate = `${year}-${month}-${day}`;


let fotos = document.querySelector("#nasaImage");

function showImage(data) {
let output = `<div class="nasa-images">
<h2 class="container">сегодня в космосе...</h3>
<img src=
"${data.url}" alt="${data.title}" width=100%>
</div>
`
fotos.insertAdjacentHTML("beforeend", output);
}

async function getFoto(foto) {
    let response = await fetch(`https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=${currDate}`);

let data = await response.json();
console.log(data[0]);
    showImage(data);
}
getFoto(fotos);

