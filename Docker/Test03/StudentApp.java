import java.util.ArrayList;
import java.util.Scanner;

public class StudentApp {

    static class Student {
        int id;
        String name;
        String course;
        double marks;

        Student(int id, String name, String course, double marks) {
            this.id = id;
            this.name = name;
            this.course = course;
            this.marks = marks;
        }

        void display() {
            System.out.println(
                "ID: " + id +
                " | Name: " + name +
                " | Course: " + course +
                " | Marks: " + marks
            );
        }
    }

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        ArrayList<Student> students = new ArrayList<>();

        students.add(new Student(101, "Kalhara", "Computer Science", 85.5));
        students.add(new Student(102, "Kasun", "Software Engineering", 78.0));
        students.add(new Student(103, "Nimal", "Information Technology", 91.0));

        while (true) {

            System.out.println("\n===== Student Management System =====");
            System.out.println("1. View Students");
            System.out.println("2. Add Student");
            System.out.println("3. Search Student");
            System.out.println("4. Exit");
            System.out.print("Enter your choice: ");

            int choice = scanner.nextInt();
            scanner.nextLine();

            switch (choice) {

                case 1:
                    System.out.println("\n--- Student List ---");

                    for (Student student : students) {
                        student.display();
                    }
                    break;

                case 2:
                    System.out.print("Enter Student ID: ");
                    int id = scanner.nextInt();
                    scanner.nextLine();

                    System.out.print("Enter Student Name: ");
                    String name = scanner.nextLine();

                    System.out.print("Enter Course: ");
                    String course = scanner.nextLine();

                    System.out.print("Enter Marks: ");
                    double marks = scanner.nextDouble();

                    students.add(
                        new Student(id, name, course, marks)
                    );

                    System.out.println("Student added successfully!");
                    break;

                case 3:
                    System.out.print("Enter Student ID to search: ");
                    int searchId = scanner.nextInt();

                    boolean found = false;

                    for (Student student : students) {
                        if (student.id == searchId) {
                            student.display();
                            found = true;
                            break;
                        }
                    }

                    if (!found) {
                        System.out.println("Student not found!");
                    }

                    break;

                case 4:
                    System.out.println("Application closed.");
                    scanner.close();
                    return;

                default:
                    System.out.println("Invalid choice!");
            }
        }
    }
}

