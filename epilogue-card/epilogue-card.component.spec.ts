import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EpilogueCardComponent } from './epilogue-card.component';

describe('EpilogueCardComponent', () => {
  let component: EpilogueCardComponent;
  let fixture: ComponentFixture<EpilogueCardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EpilogueCardComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EpilogueCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
