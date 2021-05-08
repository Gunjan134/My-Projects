import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CardTwelveComponent } from './card-twelve.component';

describe('CardTwelveComponent', () => {
  let component: CardTwelveComponent;
  let fixture: ComponentFixture<CardTwelveComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CardTwelveComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CardTwelveComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
