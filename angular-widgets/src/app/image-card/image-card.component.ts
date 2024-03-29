import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-image-card',
  templateUrl: './image-card.component.html',
  styleUrls: ['../image-card/image-card.component.scss'],
})
export class ImageCardComponent implements OnInit {
  @Input() imgPath: String;
  @Input() textOnHover: String;

  constructor() {}

  ngOnInit(): void {}
}
