import interact from 'interactjs';
import Rails from 'rails-ujs';

// Rails.start();

  function dragMoveListener (event) {
    var target = event.target,
        // keep the dragged position in the data-x/data-y attributes
        x = (parseFloat(target.getAttribute('data-x')) || 0) + event.dx,
        y = (parseFloat(target.getAttribute('data-y')) || 0) + event.dy;

    // translate the element
    target.style.webkitTransform =
    target.style.transform =
      'translate(' + x + 'px, ' + y + 'px)';

    // update the posiion attributes
    target.setAttribute('data-x', x);
    target.setAttribute('data-y', y);
  }

  // this is used later in the resizing and gesture demos
  window.dragMoveListener = dragMoveListener;

interact('.artblock')
    .draggable({
    // keep the element within the area of it's parent
    restrict: {
      restriction: "parent",
      endOnly: true,
      elementRect: { top: 0, left: 0, bottom: 1, right: 1 }
    },
    // call this function on every dragmove event
    onmove: dragMoveListener,
  })
  .resizable({
    // resize from all edges and corners
    edges: { left: true, right: true, bottom: true, top: true },

    // keep the edges inside the parent
    restrictEdges: {
      outer: 'parent',
      endOnly: true,
    }
  })
  .on('resizemove', function (event) {
    var target = event.target,
        x = (parseFloat(target.getAttribute('data-x')) || 0),
        y = (parseFloat(target.getAttribute('data-y')) || 0);

    // update the element's style
    target.style.width  = event.rect.width + 'px';
    target.style.height = event.rect.height + 'px';

    // translate when resizing from top or left edges
    x += event.deltaRect.left;
    y += event.deltaRect.top;

    target.style.webkitTransform = target.style.transform =
        'translate(' + x + 'px,' + y + 'px)';

    target.setAttribute('data-x', x);
    target.setAttribute('data-y', y);
    // target.textContent = Math.round(event.rect.width) + '\u00D7' + Math.round(event.rect.height);
  });


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

const parentDivHeight = (childDiv) => {
  return childDiv.parentElement.clientHeight;
}

const updateCoordinates = (artwork) => {
  fetch(`/hangings/${artwork.dataset.hangingid}`, {
    method: "PATCH",
    credentials: "same-origin",
    headers: {
      "Content-Type": "application/json",
      "X-CSRF-Token": Rails.csrfToken()
    },
    body: JSON.stringify({ query: { id: artwork.dataset.hangingid,
                        left: (artwork.dataset.x / parentDivWidth(artwork)) * 100,
                        top: (artwork.dataset.y / parentDivHeight(artwork)) * 100,
                        width: (artwork.offsetWidth / parentDivWidth(artwork)) * 100
                      } })
    });
}
