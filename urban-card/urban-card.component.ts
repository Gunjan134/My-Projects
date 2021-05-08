import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-urban-card',
  templateUrl: './urban-card.component.html',
  styleUrls: ['./urban-card.component.scss'],
})
export class UrbanCardComponent implements OnInit {
  @Input() text: String;
  @Input() btnText: String;
  @Input() imgPath: String;

  constructor() {}

  ngOnInit(): void {}
}
