const tekst = document.querySelector('#prawo');
let position = 2000;

function animation() {
    position += 5;
    tekst.style.left = position + 'px';

    if (position > window.innerWidth) {
        position = -50;
    }
    requestAnimationFrame(animation);
}

animation();