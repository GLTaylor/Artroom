import displace from 'displacejs';

const positionArt = (element) => {
  element.style.left = element.offsetLeft;
  element.style.top = element.offsetTop;
}

const ball = document.querySelector('.ball');
const displaceBall = displace(ball, {
                        constrain: true,
                        relativeTo: document.querySelector(".ball-container"),
                        onMouseUp : positionArt(ball)
                      })


