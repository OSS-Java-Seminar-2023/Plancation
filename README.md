# Plancation
Calendar planner for vacation days

## List of contents
- [Introduction](https://github.com/OSS-Java-Seminar-2023/Plancation#introduction)
- [Features](https://github.com/OSS-Java-Seminar-2023/Plancation#features)
- [Database model](https://github.com/OSS-Java-Seminar-2023/Plancation#database-model)
- [Technologies](https://github.com/OSS-Java-Seminar-2023/Plancation#technologies)
- [Developers](https://github.com/OSS-Java-Seminar-2023/Plancation#developers)

  ## Introduction
  Plancation is organisational tool that simplifies vacation request process. Emplyees can select desired dates with a help of calendar which supervisors     need to approve. The process is further simplified by providing supervisors with different tools for handling vacation requests, such as overview of        all the employees currently on vacation, overview of left vacation days, employees position in the company ect.

  ## Features
  **Admin**
    - Creating new users
    - Deleting users
    - Assigning user permissions (differentiating between regular user and manager)
    - Configuring calendar options (working/non-working weekends, holidays ect.)

  **Manager**
    - Populating user's account with required fields (employee's number of vacation days, employee's role in company ect.)
    - Approval of vacation requests
    - Overview of current status of employees on vacation (filtering by different criteria)
    - Adding events to the calendar (important meetings, team building, training sessions ect.)

  **Employee**
    - Calendar overview
    - Requesting vacation date(s) (selecting date(s) on the calendar)
    - Request status overview (pending requests, approved requests, declined requests)
    - Overview of vacation days information (remaining vacation days, used vacation days, last year's unused vacation days)

  ## Database model

![plancation_db_shema](https://github.com/OSS-Java-Seminar-2023/Plancation/assets/92264175/1ed35013-de06-485a-98b6-a94776de7c1a)




  ## Technologies
  Java, Docker, Thymeleaf, Spring Boot

  ## Developers
  Josip Marinović, Jakša Maršić, Mario Miletić
