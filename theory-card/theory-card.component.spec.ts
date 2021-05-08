import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TheoryCardComponent } from './theory-card.component';

describe('TheoryCardComponent', () => {
  let component: TheoryCardComponent;
  let fixture: ComponentFixture<TheoryCardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TheoryCardComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TheoryCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
