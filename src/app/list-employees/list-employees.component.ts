import { Component } from '@angular/core';
import { Worker } from '../worker';

@Component({
  selector: 'app-list-employees',
  templateUrl: './list-employees.component.html',
  styleUrl: './list-employees.component.css'
})
export class ListEmployeesComponent {
  readonly baseUrl = 'https://angular.dev/assets/tutorials/common';
  employee: Worker = {
    id: 9999,
    name: 'Aaron Archer',
    photo: `${this.baseUrl}/example-house.jpg`,
  };
}
