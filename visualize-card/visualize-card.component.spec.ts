import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { VisualizeCardComponent } from './visualize-card.component';

describe('VisualizeCardComponent', () => {
  let component: VisualizeCardComponent;
  let fixture: ComponentFixture<VisualizeCardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ VisualizeCardComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(VisualizeCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
