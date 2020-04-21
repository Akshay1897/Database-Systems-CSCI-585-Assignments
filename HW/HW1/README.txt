1.)
	STUDENT_ID is the primary key for STUDENT Entity as each student with have one and only one Student_id.

	For every STUDENT, he can have 1 to 'N' course enrollments and 1 to 'N' project enrollments.

	STUDENT is scheduled in one and only one room for a course. Thus STUDENT has cardinality 1:1 with rooms.

	STUDENT can borrow 0 or 'M' books from LIBRARY.

	STUDENT has to pay a flat fee at the start. Thus it has 1:1 cardinality with FEE.

2.)	
	COURSE_ID is the primary attribute of COURSE Entity. Thus it is the primary key of COURSE Entity.

	COURSE can have 0 to M students enrolled.

	Every COURSE can have 0 or 1 CODING_CLASSES. Thus 0:1 cardinality with CODING_CLASSES.

	COURSE can be taught in one and only room at a time. Therefore, Courses have a 1:1 cardinality with ROOMS.

3.)
	FACULTY have FACULTY_ID as primary key.

	FACULTY can teach 0 to 'M' CODING_CLASSES and oversee 0 to 'M' projects.

	FACULTY are paid by the number of hours they teach a coding class and number of hours they oversee a project.

4.)
	PROJECT have PROJECT_ID as the primary key.

	Every PROJECT is based on a micro-controller. Thus 1:1 cardinality with MICROCONTROLLER.

	PROJECT can have 1 or M STUDENT working on it

	PROJECT can be overseen by 0 to M FACULTY. 

	Every PROJECT consists of atleast one GROUP that works on the PROJECT.

5.)
	CODING_CLASSES have CLASS_ID as primary key attribute.

	CODING_CLASSES can be taught by many FACULTY.

	CODING_CLASSES can exist regardless of COURSES.

	Every CODING_CLASSES can have only one TEXTBOOK. Thus 1:1 cardinality with TEXTBOOK.

6.)
	TEXTBOOK have TB_ID as its primary attribute.

	A TEXTBOOK can be used by 0 or many CODING_CLASSES. Thus 0:M cardinality.

7.)
	ROOMS have ROOOM_ID as its Primary key.

	ROOMS can have only one course taking place in it at a given time.
	Thus ROOMS have a 1:1 cardinality with COURSES.

	ROOMS can have 0 to N STUDENTs in it.

8.)
	BORROW_ID is the primary attribute of BORROW_BOOK.

	A BOOK can be borrowed by only one student at a given time. But a STUDENT can borrow multiple books. Thus 1:M cardinality with STUDENT.

9.)
	BOOK have BOOK_ID as its primary key.

	A BOOK can belong to one and only one Library, on the other hand a Library can have many books.

10.)
	GROUP have GROUP_ID as their primary attribute.

	A PROJECT can have 1 or many GROUPS working on it, while a group can work on only one PROJECT at a time. Thus GROUP have a 1:M cardinality with PROJECT.

	GROUP has only one TABLE.

11.)
	SUPPLIER exists regardless of anything.

	A SUPPLIER has SUPPLIER_ID as its primary key.

12.)
	GROUP can order one or many PARTS from SUPPLIER.

	Every order have a primary attribute called ORDER_ID.
