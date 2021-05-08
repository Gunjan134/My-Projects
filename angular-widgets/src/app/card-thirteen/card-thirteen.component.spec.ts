import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CardThirteenComponent } from './card-thirteen.component';

describe('CardThirteenComponent', () => {
  let component: CardThirteenComponent;
  let fixture: ComponentFixture<CardThirteenComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CardThirteenComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CardThirteenComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
