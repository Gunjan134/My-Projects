import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CardElevenComponent } from './card-eleven.component';

describe('CardElevenComponent', () => {
  let component: CardElevenComponent;
  let fixture: ComponentFixture<CardElevenComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CardElevenComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CardElevenComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
