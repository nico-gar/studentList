//
//  StudenController.swift
//  Student List
//
//  Created by Nicolas Garaycochea on 11/12/22.
//

import Foundation

class StudentController {
    
    static var students: [Student]{
        return [
                Student(firstName: "Nico", lastName: "Garaycochea", age: 41),
                Student(firstName: "Amadi", lastName: "Amadoit", age: 30),
                Student(firstName: "Alex", lastName: "Quintero", age: 25),
                Student(firstName: "Anthony", lastName: "Pham", age: 25)
            ]
    }
}
