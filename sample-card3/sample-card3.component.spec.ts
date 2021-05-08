import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SampleCard3Component } from './sample-card3.component';

describe('SampleCard3Component', () => {
  let component: SampleCard3Component;
  let fixture: ComponentFixture<SampleCard3Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SampleCard3Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SampleCard3Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
