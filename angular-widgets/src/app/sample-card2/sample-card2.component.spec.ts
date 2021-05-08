import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SampleCard2Component } from './sample-card2.component';

describe('SampleCard2Component', () => {
  let component: SampleCard2Component;
  let fixture: ComponentFixture<SampleCard2Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SampleCard2Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SampleCard2Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
