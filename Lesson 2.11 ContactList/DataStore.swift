//
//  DataStore.swift
//  Lesson 2.11 ContactList
//
//  Created by Valentin on 27.02.2024.
//

final class DataStore {
    private let names = ["Mary", "Ivan", "John", "Sharon", "Aron",
                "Ted", "Alina", "Nikol", "Monika", "Fibi"]
    private let surnames = ["Jankin","Black","White","Williams","Butler",
                    "Purple","Doe","Mask","Desktop","Wik"]
    private let phones = ["123 444 677","123 555 777","234 454 689","234 555 789","334 456 677",
                  "444 555 789","666 777 789","321 321 789","432 432 789","543 765 789"]
    private let emails = ["www3@ml.ru","rt45@ml.ru","ttyy@ml.ru","yyuu@ml.ru","yuyu@ml.ru",
                  "zxc@ml.ru","ssdc@ml.ru","dcd@ml.ru","fvfv@ml.ru","bgbg@ml.ru"]
    
    func getRandomPerson() -> Person{
        let person = Person(
            name: names.randomElement() ?? "",
            surname: surnames.randomElement() ?? "",
            phone: phones.randomElement() ?? "",
            email: emails.randomElement() ?? ""
        )
        
        return person
    }
}
