//
//  Student.swift
//  Student List
//
//  Created by Nicolas Garaycochea on 11/12/22.
//

import Foundation

class Student {
    init(firstName: String, lastName: String, age: Int){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    let firstName: String
    let lastName: String
    let age: Int
}
