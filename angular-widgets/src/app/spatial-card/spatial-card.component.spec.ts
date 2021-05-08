import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SpatialCardComponent } from './spatial-card.component';

describe('SpatialCardComponent', () => {
  let component: SpatialCardComponent;
  let fixture: ComponentFixture<SpatialCardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SpatialCardComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SpatialCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
