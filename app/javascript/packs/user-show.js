import displace from 'displacejs';
import Rails from 'rails-ujs';

const positionArt = (element) => {
  element.style.left = element.offsetLeft;
  element.style.top = element.offsetTop;
}

const artworks = document.querySelectorAll('.artblock');
  artworks.forEach((artwork) => {
  let displaceart = displace(artwork, {
                          constrain: true,
                          relativeTo: document.querySelector(".ball-container"),
                          onMouseUp : positionArt(artwork)
                        });
  })


const saveButton = document.getElementById('save-room');
saveButton.addEventListener("click", (event) => {
  const artworksNodes = document.querySelectorAll('.artblock');
  artworksNodes.forEach((artwork) => {
   updateCoordinates(artwork);
  })
})

const updateCoordinates = (artwork) => {
  fetch(`/hangings/${artwork.dataset.id}`, {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
      "X-CSRF-Token": Rails.csrfToken()
    },
    body: JSON.stringify({ query: { id: artwork.dataset.id,
                        left: artwork.offsetLeft,
                        top: artwork.offsetTop
                      } })
    });
}

