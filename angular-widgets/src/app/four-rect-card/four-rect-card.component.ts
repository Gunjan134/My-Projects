import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-four-rect-card',
  templateUrl: './four-rect-card.component.html',
  styleUrls: ['./four-rect-card.component.scss'],
})
export class FourRectCardComponent implements OnInit {
  @Input() img1Path: String;
  @Input() img2Path: String;
  @Input() img3Path: String;
  @Input() img4Path: String;
  @Input() textOnHover1: String;
  @Input() textOnHover2: String;
  @Input() textOnHover3: String;
  @Input() textOnHover4: String;

  constructor() {}

  ngOnInit(): void {}
}
