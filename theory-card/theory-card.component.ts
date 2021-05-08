import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-theory-card',
  templateUrl: './theory-card.component.html',
  styleUrls: ['./theory-card.component.scss'],
})
export class TheoryCardComponent implements OnInit {
  @Input() title: String;
  @Input() description: String;
  @Input() btnText: String;
  @Input() imgPath: String;

  constructor() {}

  ngOnInit(): void {}
}
