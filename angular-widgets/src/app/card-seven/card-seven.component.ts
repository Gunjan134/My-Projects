import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-seven',
  templateUrl: './card-seven.component.html',
  styleUrls: ['./card-seven.component.scss']
})
export class CardSevenComponent implements OnInit {
  @Input() heading: String;
  @Input() description: String;
  @Input() imgPath: String;
  @Input() textInCircle: String;

  constructor() { }

  ngOnInit(): void {
  }

}
