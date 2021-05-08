import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-profile-card',
  templateUrl: './profile-card.component.html',
  styleUrls: ['./profile-card.component.scss'],
})
export class ProfileCardComponent implements OnInit {
  @Input() thumbnail: String;
  @Input() name: String;
  @Input() title: String;
  @Input() subTitle: String;
  @Input() description: String;
  @Input() btnText: String;

  constructor() {}

  ngOnInit(): void {}
}
