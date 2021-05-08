import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HieloCardComponent } from './hielo-card.component';

describe('SampleCard1Component', () => {
  let component: HieloCardComponent;
  let fixture: ComponentFixture<HieloCardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [HieloCardComponent],
    }).compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HieloCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
