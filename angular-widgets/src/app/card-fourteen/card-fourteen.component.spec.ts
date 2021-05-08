import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CardFourteenComponent } from './card-fourteen.component';

describe('CardFourteenComponent', () => {
  let component: CardFourteenComponent;
  let fixture: ComponentFixture<CardFourteenComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CardFourteenComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CardFourteenComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
