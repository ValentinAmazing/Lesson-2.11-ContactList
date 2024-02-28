
struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fio: String {
        "\(name) \(surname)"
    }
    
    static func getPersonList() -> [Person] {
        (1...9).map {_ in
            DataStore().getRandomPerson()
        }
    }
}
