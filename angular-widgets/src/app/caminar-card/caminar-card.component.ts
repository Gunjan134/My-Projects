import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-caminar-card',
  templateUrl: './caminar-card.component.html',
  styleUrls: ['./caminar-card.component.scss'],
})
export class CaminarCardComponent implements OnInit {
  @Input() title: String;
  @Input() subTitle: String;
  @Input() img1Path: String;
  @Input() img2Path: String;
  @Input() img3Path: String;
  @Input() img4Path: String;

  constructor() {}

  ngOnInit(): void {}
}
