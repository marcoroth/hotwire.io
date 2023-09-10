import Swiper from 'swiper'

document.querySelectorAll('.carousel').forEach(element => {
  new Swiper(element, {
    breakpoints: {
      320: {
        slidesPerView: 1
      },
      640: {
        slidesPerView: 2
      },
      1024: {
        slidesPerView: 3
      }
    },
    grabCursor: true,
    loop: false,
    centeredSlides: false,
    initialSlide: 1 ,
    spaceBetween: 24,
    navigation: {
      nextEl: '.carousel-next',
      prevEl: '.carousel-prev',
    },
  });
})

// Box highlighter
class Highlighter {
  constructor(containerElement) {
    this.container = containerElement;
    this.boxes = Array.from(this.container.children);
    this.mouse = {
      x: 0,
      y: 0,
    };
    this.containerSize = {
      w: 0,
      h: 0,
    };
    this.initContainer = this.initContainer.bind(this);
    this.onMouseMove = this.onMouseMove.bind(this);
    this.init();
  }

  initContainer() {
    this.containerSize.w = this.container.offsetWidth;
    this.containerSize.h = this.container.offsetHeight;
  }

  onMouseMove(event) {
    const { clientX, clientY } = event;
    const rect = this.container.getBoundingClientRect();
    const { w, h } = this.containerSize;
    const x = clientX - rect.left;
    const y = clientY - rect.top;
    const inside = x < w && x > 0 && y < h && y > 0;
    if (inside) {
      this.mouse.x = x;
      this.mouse.y = y;
      this.boxes.forEach((box) => {
        const boxX = -(box.getBoundingClientRect().left - rect.left) + this.mouse.x;
        const boxY = -(box.getBoundingClientRect().top - rect.top) + this.mouse.y;
        box.style.setProperty('--mouse-x', `${boxX}px`);
        box.style.setProperty('--mouse-y', `${boxY}px`);
      });
    }
  }

  init() {
    this.initContainer();
    window.addEventListener('resize', this.initContainer);
    window.addEventListener('mousemove', this.onMouseMove);
  }
}

// Init Highlighter
const highlighters = document.querySelectorAll('[data-highlighter]');
highlighters.forEach((highlighter) => {
  new Highlighter(highlighter);
});
