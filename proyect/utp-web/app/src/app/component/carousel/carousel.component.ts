import {Component, EventEmitter, Output} from '@angular/core';
import { CarouselModule } from 'ngx-bootstrap/carousel';
import {NgForOf, NgIf} from "@angular/common";
import {FormsModule} from "@angular/forms";


@Component({
  selector: 'app-carousel',
  standalone: true,
  imports: [
    CarouselModule,
    NgForOf,
    FormsModule,
    NgIf
  ],
  templateUrl: './carousel.component.html',
  styleUrl: './carousel.component.css'
})
export class CarouselComponent {
  search = 'http://local.siri.com/static/lupa.png'
  images = [
    { src: 'http://local.siri.com/static/carousel/slide1.jpg', alt: 'Descripción de la imagen 1' },
    { src: 'http://local.siri.com/static/carousel/slider2.jpeg', alt: 'Descripción de la imagen 2' },
    { src: 'http://local.siri.com/static/carousel/slide3.jpg', alt: 'Descripción de la imagen 3' }
  ];

  currentSlide = 0;
  @Output() redirigirEvent = new EventEmitter<void>();

  emitirRedireccion() {
    this.redirigirEvent.emit();  // Emitir evento al component padre
  }

  nextSlide() {
    const totalSlides = 3;
    this.currentSlide = (this.currentSlide + 1) % totalSlides;
    this.updateCarousel();
  }

  prevSlide() {
    const totalSlides = 3;
    this.currentSlide = (this.currentSlide - 1 + totalSlides) % totalSlides;
    this.updateCarousel();
  }

  updateCarousel() {
    const carousel = document.querySelector('.carousel') as HTMLElement;
    carousel.style.transform = `translateX(-${this.currentSlide * 100}%)`;
  }


}
