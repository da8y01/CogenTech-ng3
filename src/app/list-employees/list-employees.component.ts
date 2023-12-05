import { Component } from '@angular/core';
import { Worker } from '../worker';
import { BackendService } from '../backend.service';

@Component({
  selector: 'app-list-employees',
  templateUrl: './list-employees.component.html',
  styleUrl: './list-employees.component.css'
})
export class ListEmployeesComponent {
  employees: Worker[] = [];

  readonly baseUrl = 'https://angular.dev/assets/tutorials/common';
  employee: Worker = {
    id: 9999,
    name: 'Aaron Archer',
    photo: `${this.baseUrl}/example-house.jpg`,
  };

  constructor(private backendService: BackendService) {}

  ngOnInit(): void {
    this.getEmployees();
  }

  getEmployees(): void {
    this.employees = this.backendService.getEmployees();
  }
}
