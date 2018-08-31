const description = document.querySelector('.bio-long');

if (description) {
    const showChar = 2200;
    const ellipsestext = "...";
    let readtext = '<i class="fas fa-angle-right select-me"></i>'
    // let hidetext = '<i class="fas fa-angle-left select-me-too hide-me"></i>'
    let content = description.innerHTML;

    if (content.length > showChar) {
      const c = content.substr(0, showChar);
      const h = content.substr(showChar, content.length - showChar);
      const html = c + '<span class="ellipses-option ">' + ellipsestext + '</span><span class="expandable-text morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + readtext + '</a></span>';
      // h.style.display.hide;
      description.innerHTML = html;



  const showMore = document.querySelector('.morelink');
  showMore.addEventListener("click", (event) => {
    let a = document.querySelector(".expandable-text")
    a.classList.toggle('morecontent');
    let b = document.querySelector(".ellipses-option")
    b.classList.toggle('hide-me');
    let d = document.querySelector(".select-me")
    d.classList.toggle('active');
    event.preventDefault();
  });
}
}
