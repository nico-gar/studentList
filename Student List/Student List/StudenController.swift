//
//  StudenController.swift
//  Student List
//
//  Created by Nicolas Garaycochea on 11/12/22.
//

import Foundation

class StudentController {
    
    init() {
        
        self.students = [
                Student(firstName: "Nico", lastName: "Garaycochea", age: 41),
                Student(firstName: "Amadi", lastName: "Amadoit", age: 30),
                Student(firstName: "Alex", lastName: "Quintero", age: 25),
                Student(firstName: "Anthony", lastName: "Pham", age: 25)
             ]
    }
    func create(studentWithFirstName firstname: String, lastName: String, age: Int) -> Student {
        let student = Student(firstName: firstname, lastName: lastName, age: age)
        self.students.append(student)
        return student
    }
    
    func delete(student: Student) {
        if let index = self.students.firstIndex(where: {$0 == student}) {
//            video uses self.students.Index(where:) but it says that Index(where) is depreciated
            self.students.remove(at: index)
        }
    }
    
    var students: [Student]
    
}
