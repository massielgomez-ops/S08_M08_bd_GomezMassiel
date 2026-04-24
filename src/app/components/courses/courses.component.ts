import { Component } from '@angular/core';

@Component({
  selector: 'app-courses',
  standalone: false,
  templateUrl: './courses.component.html',
  styleUrl: './courses.component.css'
})
export class CoursesComponent {

  courses = [ { name: 'Jornada de adopciones', description: 'Registro rapido de solicitudes y estado del proceso.' },
              { name: 'Control veterinario', description: 'Historial basico de vacunas, edad y observaciones.' },
              { name: 'Seguimiento post adopcion', description: 'Acompanamiento de familias para una adopcion responsable.' }
  ];

}
