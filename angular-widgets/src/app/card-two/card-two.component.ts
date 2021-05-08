import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-two',
  templateUrl: './card-two.component.html',
  styleUrls: ['./card-two.component.scss'],
})
export class CardTwoComponent implements OnInit {
  @Input() notification: String;
  @Input() heading: String;
  @Input() description: String;
  @Input() imgPath: String;

  constructor() {}

  ngOnInit(): void {}
}
