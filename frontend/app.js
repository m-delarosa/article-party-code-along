fetch("http://localhost:3000/authors")
  .then(response => response.json())
  .then(authors => showAuthors(authors))

function showAuthors(authors) {
  const authorSection = document.querySelector("#authors")
  const authorDropdown = document.querySelector("#author-list")

  authors.forEach(author => {
    // console.log("author", author)
    // Test to see the data we will be working within this function.
    const newAuthor = document.createElement("h4")
    newAuthor.innerHTML = `<a href='showAuthor.html?id=${author.id}'>${author.name}</a>`
    authorSection.append(newAuthor)

    const authorList = document.createElement("option")
    authorList.innerText = author.name
    authorList.value = author.id
    authorDropdown.append(authorList)
  })
}

fetch("http://localhost:3000/magazines")
  .then(response => response.json())
  .then(magazines => displayMagazineDropdown(magazines))

function displayMagazineDropdown(magazines) {
  const magazineDropdown = document.querySelector("#magazine-list")

  magazines.forEach(magazine => {
    const magazineList = document.createElement("option")

    magazineList.innerText = magazine.name
    magazineList.value = magazine.id

    magazineDropdown.append(magazineList)
  })
}
