import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-thirteen',
  templateUrl: './card-thirteen.component.html',
  styleUrls: ['./card-thirteen.component.scss'],
})
export class CardThirteenComponent implements OnInit {
  @Input() heading: String;
  @Input() bodyKey: String;
  @Input() bodyValue: String;
  @Input() footerKey: String;
  @Input() footerValue: String;

  constructor() {}

  ngOnInit(): void {}
}
