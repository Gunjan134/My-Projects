import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-main-card',
  templateUrl: './main-card.component.html',
  styleUrls: ['./main-card.component.scss'],
})
export class MainCardComponent implements OnInit {
  @Input() title: String;
  @Input() subTitle: String;
  @Input() description: String;
  @Input() bgImgPath: String;
  @Input() icon: String;
  @Input() btnText: String;

  constructor() {}

  ngOnInit(): void {}
}
