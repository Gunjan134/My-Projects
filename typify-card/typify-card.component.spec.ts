import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TypifyCardComponent } from './typify-card.component';

describe('TypifyCardComponent', () => {
  let component: TypifyCardComponent;
  let fixture: ComponentFixture<TypifyCardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TypifyCardComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TypifyCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
