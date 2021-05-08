import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-ten',
  templateUrl: './card-ten.component.html',
  styleUrls: ['./card-ten.component.scss'],
})
export class CardTenComponent implements OnInit {
  @Input() heading: String;
  @Input() description: String;
  @Input() bgImgPath: String;
  @Input() circularImgPath: String;
  @Input() icon: String;

  constructor() {}

  ngOnInit(): void {}
}
