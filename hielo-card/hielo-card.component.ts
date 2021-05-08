import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-hielo-card',
  templateUrl: './hielo-card.component.html',
  styleUrls: ['./hielo-card.component.scss'],
})
export class HieloCardComponent implements OnInit {
  @Input() imgPath: String;
  @Input() title: String;
  @Input() subTitle: String;
  @Input() description: String;
  @Input() btnText: String;
  @Input() btnLink: String;

  constructor() {}

  ngOnInit(): void {}
}
