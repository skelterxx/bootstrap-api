
let articlesEl = document.querySelector("#articles");

function showArticles(articles) { 
    let randomArticles = getRandomElements(articles, 2);


let output = randomArticles.reduce(function (acc, article) {
     return ( acc + 
        `<div class="bg-image card shadow-1-strong row index-cards" style="background-image: url('${article.image}');">
            <div class="card-body text-white"> 
                <h2 class="card-title">${article.star_name}</h2> 
                <h4 class="card-text">${article.title}</h4> 
                <a href="article.php?id=${article.id}" class="btn btn-light btn-lg card-button">Подробнее...</a> 
            </div> 
        </div>`
        ); }, "");

articlesEl.insertAdjacentHTML("beforeend", output); 
}

function getRandomElements(array, numElements) { 
    if (array.length <= numElements) 
        return array;

        let randomElements = [];
        let copiedArray = [...array];

    for (let i = 0; i < numElements; i++) { 
        let randomIndex = Math.floor(Math.random() * copiedArray.length);

        randomElements.push(copiedArray[randomIndex]);

        copiedArray.splice(randomIndex, 1);

    }return randomElements; 
}


async function getArticles() { 
    let response = await fetch(`server/get_articles.php`);
    let articles = await response.json(); 
showArticles(articles);
}
 getArticles();