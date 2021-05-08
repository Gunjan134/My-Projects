import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PrismCardComponent } from './prism-card.component';

describe('PrismCardComponent', () => {
  let component: PrismCardComponent;
  let fixture: ComponentFixture<PrismCardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PrismCardComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PrismCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
