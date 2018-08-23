const description = document.querySelector(".description-long");

if (description) {
  const showChar = 100;
  // const ellipsestext = "...";
  // const moretext = "more";
  // const lesstext = "less";
  // description.each(function() {
    let content = this.html();

      if(content.length > showChar) {
        const c = content.substr(0, showChar);
        const h = content.substr(showChar-1, content.length - showChar);
        // const html = c + '<span>' + ellipsestext+ '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';
        h.style.display.hide;

        // this.html(html);
      }

  }
//if it's present, shorten it to 30 words
//add an event listener on a button
//toggle back and forth between the normal version and the 30 words version
