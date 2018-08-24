const description = document.querySelector('.description-long');

if (description) {
    const showChar = 300;
    const ellipsestext = "...";
    const readtext = '<i class="fab fa-readme"></i>'
    let content = description.innerHTML;

    if (content.length > showChar) {
      const c = content.substr(0, showChar);
      const h = content.substr(showChar, content.length - showChar);
      const html = c + '<span class="ellipses-option ">' + ellipsestext + '</span><span class="expandable-text morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + readtext + '</a></span>';
      // h.style.display.hide;
      description.innerHTML = html;
    }
}

 const showMore = document.querySelector('.morelink');
  showMore.addEventListener("click", (event) => {
    a = document.querySelector(".expandable-text")
    a.classList.toggle('morecontent');
    b = document.querySelector(".ellipses-option")
    b.classList.toggle('hide-me');
    event.preventDefault();
  });



