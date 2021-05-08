import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card-twelve',
  templateUrl: './card-twelve.component.html',
  styleUrls: ['./card-twelve.component.scss']
})
export class CardTwelveComponent implements OnInit {
  @Input() heading: String;
  @Input() tag: String;

  constructor() { }

  ngOnInit(): void {
  }

}
