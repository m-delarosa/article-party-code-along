// const params = window.location.search
//basically URLSearchParams creates this an object with k:v pairs of all the query parameters in the URL
//For example:
// {
//   id: 1
//   name: "Bob"
// }
const searchParams = new URLSearchParams(window.location.search)
const id = searchParams.get("id")

fetch(`http://localhost:3000/authors/${id}`)
  .then(response => response.json())
  .then(author => showAuthor(author))

function showAuthor(author) {
  //   console.log(author)
  //DOM Manipulation in steps to get it to display names
  // 1. Create element
  const authorName = document.querySelector("#authorName")
  const newAuthor = document.createElement("h1")
  // 2. Modify element
  //   newAuthor.innerText = author.name
  newAuthor.innerText = author.name
  // 3. Append element
  // document.body.append(authorName)
  authorName.append(newAuthor)

  showArticles(author.articles)
}

//How do we show the articles listd below the author name
function showArticles(articles) {
  //Kat's example:
  const articleContainer = document.querySelector("#articles")
  //This is selecting a <ul> she inserted into the html manually
  articles.forEach(article => {
    const articleTitle = document.createElement("li")
    articleTitle.innerHTML = `<a href='showArticle.html?id=${article.id}'>${article.title}</a>`
    articleContainer.append(articleTitle)
  })
  //My code:
  //   articles.forEach(article => {
  //     const newArticle = document.createElement("h4")
  //     newArticle.innerText = article.title
  //     document.body.append(newArticle)
  //   })
}
