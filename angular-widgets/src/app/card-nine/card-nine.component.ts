import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-nine',
  templateUrl: './card-nine.component.html',
  styleUrls: ['./card-nine.component.scss'],
})
export class CardNineComponent implements OnInit {
  @Input() heading: String;
  @Input() description: String;
  @Input() btnText: String;
  @Input() bgImgPath: String;

  constructor() {}

  ngOnInit(): void {}
}
