import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-sample-card3',
  templateUrl: './sample-card3.component.html',
  styleUrls: ['./sample-card3.component.scss'],
})
export class SampleCard3Component implements OnInit {
  @Input() title: String;
  @Input() description: String;
  @Input() imgPath: String;

  constructor() {}

  ngOnInit(): void {}
}
