import Swiper from 'swiper'
import { Navigation } from 'swiper/modules';

Swiper.use([Navigation]);

document.addEventListener("turbo:load", () => {
  document.querySelectorAll('.carousel').forEach(element => {
    new Swiper(element, {
      modules: [Navigation],
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
})
