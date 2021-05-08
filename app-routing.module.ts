import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { CardOneComponent } from './card-one/card-one.component';
import { CardTwoComponent } from './card-two/card-two.component';

const routes: Routes = [
  { path: 'card-1', component: CardOneComponent },
  { path: 'card-2', component: CardTwoComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
