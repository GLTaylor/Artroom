import displace from 'displacejs';
import Rails from 'rails-ujs';

const artworks = document.querySelectorAll('.artblock');
  artworks.forEach((artwork) => {
  let displaceart = displace(artwork, {
                          constrain: true,
                          relativeTo: document.querySelector(".art-container"),
                        });
  })


const saveButton = document.getElementById('save-room');
if (saveButton) {
  saveButton.addEventListener("click", (event) => {
    const artworksNodes = document.querySelectorAll('.artblock');
    artworksNodes.forEach((artwork) => {
     updateCoordinates(artwork);
    })
  });
};

const parentDivWidth = (childDiv) => {
  return childDiv.parentElement.clientWidth;
}

const updateCoordinates = (artwork) => {
  fetch(`/hangings/${artwork.dataset.hangingid}`, {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
      "X-CSRF-Token": Rails.csrfToken()
    },
    body: JSON.stringify({ query: { id: artwork.dataset.hangingid,
                        left: (artwork.offsetLeft / parentDivWidth(artwork)) * 100,
                        top: (artwork.offsetTop / parentDivWidth(artwork)) * 100
                      } })
    });
}
