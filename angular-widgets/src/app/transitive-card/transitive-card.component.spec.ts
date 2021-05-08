import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TransitiveCardComponent } from './transitive-card.component';

describe('TransitiveCardComponent', () => {
  let component: TransitiveCardComponent;
  let fixture: ComponentFixture<TransitiveCardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TransitiveCardComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TransitiveCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
