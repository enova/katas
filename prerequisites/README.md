# Yo Dawg, I Heard You Like Prerequisites...

**...so we put prereqs on your prereqs so you can shell out for tuition while you shell out for tuition.**

Planning one's academic track in college can be difficult.  You have to ensure that you take all the classes needed for your degree, avoid conflicts between classes, and meet several prerequisites per course.  If you're lucky, you'll have some academic advisors with a firm understanding of the options to guide you.  If only there were a system that automates this process...

Your job is to write a program to take a list of Information Systems courses required for a student's degree and determine the fastest schedule to complete these courses with their prerequisites.

I've got a couple Ruby files here to start you off.  The `CourseLibrary` consists of multiple `Course`s, each with a name (e.g. "CIS 1150"), a description, a number of credit hours, and a list of prerequisites (as strings).

## Rules
* The school year consists of two semesters: Fall and Spring
* No student may take more than **16 credit hours** per semester
* In order to take a given course, the student must have already **completed** all prerequisites

## Assumptions
* All courses are offered during all semesters
* Scheduling conflicts are not a concern
* No gen-eds are required -- all courses are within the Computer Information Systems department

## Exercise

1. Write a program to take a list of CIS courses required for a student's degree, and return an optimal schedule requiring the minimum number of semesters.
2. How would your solution change if...
  - some courses were only offered in Fall (or Spring)?
  - scheduling conflicts between courses were a concern?
  - some prerequisites had multiple options (e.g. `(CIS 1130 or CIS 1150) and CIS 1400`)

<br />

_Disclaimer: courses taken from the College of DuPage course catalog_
