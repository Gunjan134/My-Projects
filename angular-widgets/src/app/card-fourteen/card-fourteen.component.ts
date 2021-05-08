import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-fourteen',
  templateUrl: './card-fourteen.component.html',
  styleUrls: ['./card-fourteen.component.scss'],
})
export class CardFourteenComponent implements OnInit {
  @Input() heading: String;
  @Input() icon: String;
  @Input() iconArr: String[];
  @Input() titleArr: String[];

  constructor() {}

  ngOnInit(): void {}
}
