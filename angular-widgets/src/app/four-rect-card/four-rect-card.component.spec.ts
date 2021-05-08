import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FourRectCardComponent } from './four-rect-card.component';

describe('FourRectCardComponent', () => {
  let component: FourRectCardComponent;
  let fixture: ComponentFixture<FourRectCardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FourRectCardComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FourRectCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
