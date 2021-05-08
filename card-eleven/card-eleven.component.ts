import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-eleven',
  templateUrl: './card-eleven.component.html',
  styleUrls: ['./card-eleven.component.scss'],
})
export class CardElevenComponent implements OnInit {
  @Input() heading: String;
  @Input() description: String;
  @Input() imgPath: String;
  @Input() textInCircle: String;

  constructor() {}

  ngOnInit(): void {}
}
