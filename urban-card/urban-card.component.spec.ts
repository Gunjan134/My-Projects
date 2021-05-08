import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UrbanCardComponent } from './urban-card.component';

describe('UrbanCardComponent', () => {
  let component: UrbanCardComponent;
  let fixture: ComponentFixture<UrbanCardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UrbanCardComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UrbanCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
