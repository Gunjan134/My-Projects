import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-typify-card',
  templateUrl: './typify-card.component.html',
  styleUrls: ['./typify-card.component.scss'],
})
export class TypifyCardComponent implements OnInit {
  @Input() icon: String;
  @Input() title: String;
  @Input() description: String;

  constructor() {}

  ngOnInit(): void {}
}
