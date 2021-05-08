import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-one',
  templateUrl: './card-one.component.html',
  styleUrls: ['./card-one.component.scss'],
})
export class CardOneComponent implements OnInit {
  @Input() header: String;
  @Input() description: String;
  @Input() footer: String;

  constructor() {}

  ngOnInit(): void {}
}
