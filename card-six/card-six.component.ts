import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-six',
  templateUrl: './card-six.component.html',
  styleUrls: ['./card-six.component.scss']
})
export class CardSixComponent implements OnInit {
  @Input() heading: String;
  @Input() description: String;
  @Input() imgPath: String;

  constructor() { }

  ngOnInit(): void {
  }

}
