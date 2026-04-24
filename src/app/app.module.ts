import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './components/header/header.component';
import { HeroComponent } from './components/hero/hero.component';
import { CoursesComponent } from './components/courses/courses.component';
import { BenefitsComponent } from './components/benefits/benefits.component';
import { ContactComponent } from './components/contact/contact.component';
import { FooterComponent } from './components/footer/footer.component';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { EnrollmentsComponent } from './pages/enrollments/enrollments.component';
import { HomeComponent } from './pages/home/home.component';
import { AdoptionsComponent } from './pages/adoptions/adoptions.component';
 
@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    HeroComponent,
    CoursesComponent,
    BenefitsComponent,
    ContactComponent,
    FooterComponent,
    EnrollmentsComponent,
    HomeComponent,
    AdoptionsComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    FormsModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
