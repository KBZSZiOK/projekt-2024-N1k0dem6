const napis = document.querySelector('#napis');
let position = 0;

function textAnimation() {
    position += 2;
    napis.style.left = position + 'px';

    if (position > window.innerWidth) {
        position = -50;
    }
    requestAnimationFrame(textAnimation);
}

textAnimation();