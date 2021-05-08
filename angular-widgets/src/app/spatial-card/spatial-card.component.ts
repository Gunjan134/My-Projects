import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-spatial-card',
  templateUrl: './spatial-card.component.html',
  styleUrls: ['./spatial-card.component.scss'],
})
export class SpatialCardComponent implements OnInit {
  @Input() title: String;
  @Input() subTitle: String;
  @Input() description: String;
  @Input() imgPath: String;

  constructor() {}

  ngOnInit(): void {}
}
