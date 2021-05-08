import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-sample-card2',
  templateUrl: './sample-card2.component.html',
  styleUrls: ['./sample-card2.component.scss'],
})
export class SampleCard2Component implements OnInit {
  @Input() title: String;
  @Input() description: String;
  @Input() btnText: String;
  @Input() imgPath: String;

  constructor() {}

  ngOnInit(): void {}
}
