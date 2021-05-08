import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';

import { CardOneComponent } from './card-one/card-one.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { CardTwoComponent } from './card-two/card-two.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { CardThreeComponent } from './card-three/card-three.component';
import { CardFourComponent } from './card-four/card-four.component';
import { CardFiveComponent } from './card-five/card-five.component';
import { CardSixComponent } from './card-six/card-six.component';
import { CardSevenComponent } from './card-seven/card-seven.component';
import { CardEightComponent } from './card-eight/card-eight.component';
import { CardNineComponent } from './card-nine/card-nine.component';
import { CardTenComponent } from './card-ten/card-ten.component';
import { CardElevenComponent } from './card-eleven/card-eleven.component';
import { CardTwelveComponent } from './card-twelve/card-twelve.component';
import { CardThirteenComponent } from './card-thirteen/card-thirteen.component';
import { CardFourteenComponent } from './card-fourteen/card-fourteen.component';
import { VideoPlayerComponent } from './video-player/video-player.component';
import { FourRectCardComponent } from './four-rect-card/four-rect-card.component';
import { DetailsCardComponent } from './details-card/details-card.component';
import { MainCardComponent } from './main-card/main-card.component';
import { ProfileCardComponent } from './profile-card/profile-card.component';
import { ImageCardComponent } from './image-card/image-card.component';
import { SimpleCardComponent } from './simple-card/simple-card.component';
import { SampleCard2Component } from './sample-card2/sample-card2.component';
import { SampleCard3Component } from './sample-card3/sample-card3.component';
import { VisualizeCardComponent } from './visualize-card/visualize-card.component';
import { EpilogueCardComponent } from './epilogue-card/epilogue-card.component';
import { PrismCardComponent } from './prism-card/prism-card.component';
import { TypifyCardComponent } from './typify-card/typify-card.component';
import { SpatialCardComponent } from './spatial-card/spatial-card.component';
import { TheoryCardComponent } from './theory-card/theory-card.component';
import { UrbanCardComponent } from './urban-card/urban-card.component';
import { TransitiveCardComponent } from './transitive-card/transitive-card.component';
import { CaminarCardComponent } from './caminar-card/caminar-card.component';
import { TestimonialCardComponent } from './testimonial-card/testimonial-card.component';
import { HieloCardComponent } from './hielo-card/hielo-card.component';

@NgModule({
  declarations: [
    AppComponent,
    CardOneComponent,
    CardTwoComponent,
    HeaderComponent,
    FooterComponent,
    CardThreeComponent,
    CardFourComponent,
    CardFiveComponent,
    CardSixComponent,
    CardSevenComponent,
    CardEightComponent,
    CardNineComponent,
    CardTenComponent,
    CardElevenComponent,
    CardTwelveComponent,
    CardThirteenComponent,
    CardFourteenComponent,
    VideoPlayerComponent,
    FourRectCardComponent,
    DetailsCardComponent,
    MainCardComponent,
    ProfileCardComponent,
    HieloCardComponent,
    ImageCardComponent,
    SimpleCardComponent,
    SampleCard2Component,
    SampleCard3Component,
    VisualizeCardComponent,
    EpilogueCardComponent,
    PrismCardComponent,
    TypifyCardComponent,
    SpatialCardComponent,
    TheoryCardComponent,
    UrbanCardComponent,
    TransitiveCardComponent,
    CaminarCardComponent,
    TestimonialCardComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule,
    BrowserAnimationsModule,
  ],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
