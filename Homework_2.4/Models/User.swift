//
//  User.swift
//  Homework_2.4
//
//  Created by Arcani on 29.08.2021.
//

struct User {
    var login: String?
    var password: String?
    var person: Person?
    
    static func getUserAlex() -> User {
        return User(
            login: "Username",
            password: "Password",
            person: Person(
            fullName: "AlexZ",
            CV: "Hi! I'm a 30 y.o. lawyer from Russia who wishes to become a software engineer",
            significantOthersFullName: "Mercedes",
            significantOthersCV: "Mercedes is a young indie photographer",
            petsName: "Balu and Odyssey"))
    }
}

struct Person {
    let fullName: String?
    let CV: String?
    let significantOthersFullName: String?
    let significantOthersCV: String?
    let petsName: String?
}


