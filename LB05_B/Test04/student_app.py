class Student:

    def __init__(self, student_id, name, course, marks):
        self.student_id = student_id
        self.name = name
        self.course = course
        self.marks = marks

    def display(self):
        print(
            f"ID: {self.student_id} | "
            f"Name: {self.name} | "
            f"Course: {self.course} | "
            f"Marks: {self.marks}"
        )


students = [
    Student(101, "Kalhara", "Computer Science", 85.5),
    Student(102, "Kasun", "Software Engineering", 78.0),
    Student(103, "Nimal", "Information Technology", 91.0)
]


def view_students():
    print("\n--- Student List ---")

    for student in students:
        student.display()


def add_student():
    print("\n--- Add Student ---")

    student_id = int(input("Enter Student ID: "))
    name = input("Enter Student Name: ")
    course = input("Enter Course: ")
    marks = float(input("Enter Marks: "))

    student = Student(student_id, name, course, marks)
    students.append(student)

    print("Student added successfully!")


def search_student():
    print("\n--- Search Student ---")

    student_id = int(input("Enter Student ID: "))

    for student in students:

        if student.student_id == student_id:
            print("\nStudent Found!")
            student.display()
            return

    print("Student not found!")


def main():

    while True:

        print("\n==============================")
        print("   STUDENT MANAGEMENT SYSTEM")
        print("==============================")
        print("1. View Students")
        print("2. Add Student")
        print("3. Search Student")
        print("4. Exit")
        print("==============================")

        choice = input("Enter your choice: ")

        if choice == "1":
            view_students()

        elif choice == "2":
            add_student()

        elif choice == "3":
            search_student()

        elif choice == "4":
            print("Application closed.")
            break

        else:
            print("Invalid choice!")


if __name__ == "__main__":
    main()

