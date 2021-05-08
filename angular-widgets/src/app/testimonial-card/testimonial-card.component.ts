import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-testimonial-card',
  templateUrl: './testimonial-card.component.html',
  styleUrls: ['./testimonial-card.component.scss'],
})
export class TestimonialCardComponent implements OnInit {
  @Input() comment: String;
  @Input() name: String;
  @Input() designation: String;
  @Input() imgPath: String;

  constructor() {}

  ngOnInit(): void {}
}
