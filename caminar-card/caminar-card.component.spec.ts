import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CaminarCardComponent } from './caminar-card.component';

describe('CaminarCardComponent', () => {
  let component: CaminarCardComponent;
  let fixture: ComponentFixture<CaminarCardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CaminarCardComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CaminarCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
