//
//  Parson.swift
//  RealmAutoIncrement
//
//  Created by kotala tetsuya on 2015/12/03.
//  Copyright © 2015年 kotalab. All rights reserved.
//

import RealmSwift

class Person: Object {
    dynamic var id: String = NSUUID().UUIDString
    dynamic var name: String = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
}

class MyRealm {
    
    func createNewPerson(name: String) {
        
        let person = Person()
        person.name = name
        
        let realm = try! Realm()
        try! realm.write{ realm.add(person) }
    }
    
    var findAllPerson: Results<Person> { return try! Realm().objects(Person) }
}
