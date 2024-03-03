
struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fio: String {
        "\(name) \(surname)"
    }
    
    static func getPersonList() -> [Person] {
        
        let personList = DataStore()
        
        let names = personList.names.shuffled()
        let surnames = personList.surnames.shuffled()
        let phones = personList.phones.shuffled()
        let emails = personList.emails.shuffled()
        
        let namesQty = names.count
        let surnamesQty = surnames.count
        let phonesQty = phones.count
        let emailQty = emails.count
        
        let personsQty = min(namesQty, surnamesQty, phonesQty, emailQty)
        
        return (0..<personsQty).map {index in
            Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
        }
        
    }
}
