#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#define MAX_NAME_LENGTH 20
#define MAX_STUDENTS 100

typedef struct {
    char name[MAX_NAME_LENGTH + 1];
    int age;
    float grade;
} Student;

void readStudent(Student* student) {
    printf("Enter student name: ");
    scanf("%20s", student->name);
    printf("Enter student age: ");
    scanf("%d", &student->age);
    printf("Enter student grade: ");
    scanf("%f", &student->grade);
}

void printStudent(const Student* student) {
    printf("Name: %s\nAge: %d\nGrade: %.2f\n", student->name, student->age, student->grade);
}

void sortStudents(Student* students, int numStudents) {
    int i, j;
    Student temp;

    for (i = 0; i < numStudents - 1; i++) {
        for (j = 0; j < numStudents - i - 1; j++) {
            if (students[j].grade < students[j + 1].grade) {
                temp = students[j];
                students[j] = students[j + 1];
                students[j + 1] = temp;
            }
        }
    }
}

int main() {
    int numStudents, i;
    Student students[MAX_STUDENTS];

    printf("Enter the number of students: ");
    scanf("%d", &numStudents);

    if (numStudents > MAX_STUDENTS) {
        printf("Error: Number of students exceeds maximum limit.\n");
        return 1;
    }

    printf("Enter student information:\n");
    for (i = 0; i < numStudents; i++) {
        printf("Student %d:\n", i + 1);
        readStudent(&students[i]);
    }

    printf("\nStudent Information:\n");
    for (i = 0; i < numStudents; i++) {
        printStudent(&students[i]);
        printf("\n");
    }

    printf("\nSorted Student Information (by grade):\n");
    sortStudents(students, numStudents);
    for (i = 0; i < numStudents; i++) {
        printStudent(&

            students[i]);
            printf("\n");
    }

    return 0;
}

