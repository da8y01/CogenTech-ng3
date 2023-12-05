import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';

import { Worker } from './worker';
import { EMPLOYEES } from './mock-employees';

@Injectable({
  providedIn: 'root'
})
export class BackendService {

  constructor() { }

  getEmployees(): Worker[] {
    const employees = of(EMPLOYEES);
    // return employees;
    return EMPLOYEES;
  }
}
