import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-epilogue-card',
  templateUrl: './epilogue-card.component.html',
  styleUrls: ['./epilogue-card.component.scss'],
})
export class EpilogueCardComponent implements OnInit {
  @Input() title: String;
  @Input() description: String;
  @Input() btnText: String;
  @Input() imgPath: String;

  constructor() {}

  ngOnInit(): void {}
}
