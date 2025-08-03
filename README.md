# Company ER Diagram

This repository contains the Entity-Relationship (ER) diagram for the company based on the following business rules:

- Employees work on multiple projects and log working hours.
- Employees have a recursive relationship for supervision (an employee can supervise others).
- Each employee must be assigned to one department.
- Departments have a manager with a hire date.
- Departments manage multiple projects and employees.

---

![ER Diagram](company_erd.png)

*The image `company_erd.png` is the ER diagram representing these relationships.*

---

## Files

- `company_erd.png` — The ER diagram image file.
- `README.md` — This documentation file explaining the project.
