import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-eight',
  templateUrl: './card-eight.component.html',
  styleUrls: ['./card-eight.component.scss'],
})
export class CardEightComponent implements OnInit {
  @Input() imgPath: String;
  @Input() heading: String;
  @Input() description: String;
  @Input() subHeading1: String;
  @Input() subHeading2: String;
  @Input() textInCircle: String;
  constructor() {}

  ngOnInit(): void {}
}
