import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-three',
  templateUrl: './card-three.component.html',
  styleUrls: ['./card-three.component.scss'],
})
export class CardThreeComponent implements OnInit {
  @Input() heading: String;
  @Input() description: String;
  @Input() iconArr: String[];
  @Input() textArr: String[];

  constructor() {}

  ngOnInit(): void {}
}
