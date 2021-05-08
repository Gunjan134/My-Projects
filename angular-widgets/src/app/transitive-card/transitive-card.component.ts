import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-transitive-card',
  templateUrl: './transitive-card.component.html',
  styleUrls: ['./transitive-card.component.scss'],
})
export class TransitiveCardComponent implements OnInit {
  @Input() title: String;
  @Input() description: String;
  @Input() btnText: String;
  @Input() bgImagePath: String;

  constructor() {}

  ngOnInit(): void {}
}
