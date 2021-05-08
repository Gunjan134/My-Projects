import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-prism-card',
  templateUrl: './prism-card.component.html',
  styleUrls: ['./prism-card.component.scss'],
})
export class PrismCardComponent implements OnInit {
  @Input() title: String;
  @Input() description: String;
  @Input() btnText: String;
  @Input() imgPath: String;

  constructor() {}

  ngOnInit(): void {}
}
