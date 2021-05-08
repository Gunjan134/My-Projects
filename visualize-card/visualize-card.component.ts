import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-visualize-card',
  templateUrl: './visualize-card.component.html',
  styleUrls: ['./visualize-card.component.scss']
})
export class VisualizeCardComponent implements OnInit {
  @Input() imgPath: String;
  @Input() title: String;

  constructor() { }

  ngOnInit(): void {
  }

}
