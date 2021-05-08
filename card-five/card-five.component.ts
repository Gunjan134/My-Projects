import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-five',
  templateUrl: './card-five.component.html',
  styleUrls: ['./card-five.component.scss'],
})
export class CardFiveComponent implements OnInit {
  @Input() bgImagePath: String;
  @Input() heading: String;

  constructor() {}

  ngOnInit(): void {}
}
