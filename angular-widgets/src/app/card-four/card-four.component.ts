import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-four',
  templateUrl: './card-four.component.html',
  styleUrls: ['./card-four.component.scss'],
})
export class CardFourComponent implements OnInit {
  @Input() bgImagePath: String;
  @Input() heading: String;
  @Input() description: String;
  @Input() icon: String;

  constructor() {}

  ngOnInit(): void {}
}
