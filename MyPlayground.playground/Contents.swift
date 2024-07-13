// https://www.youtube.com/watch?v=n5X_V81OYnQ&ab_channel=PaulHudson
import Foundation

// CONSTANTS AND VARIABLES
// "let" is constant (or unchangeable), "var" is mutable (or changeable). constants are preferred.
var name = "Ted"
name = "Rebecca"

let user = "Daphne"
print(user)
//btw, print statements start on a newline by default.

// STRINGS
let actor = "Tom Cruise 🏃‍♂️"
let quote = "He tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)
print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away.")) //false bc original has lowercase

// INTEGERS
let score = 10
let higherScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...1000)

// DECIMALS
let decimal1 = 3.1 //if you create a number with a decimal point, Swift considered it a double even if the numbers after it are a 0
let decimal2 = 3.0

// BOOLEANS
let goodOver = true
var isSaved = false
isSaved.toggle()    //flip a boolean from true to false or vice versa

// JOINING STRINGS
// \() is just an easy way to include variables inside a string (string interpolation). It must be used inside quotes.
// Technically you can always opt out of using this by just using concatenation with "+".
let firstName = "Taylor"
let age = 26
let message = "I'm \(firstName) and I'm \(age) years old"
print(message)

// ARRAYS
// each element in an array must be the same type
var colors = ["Red", "Green", "Blue"]
let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]

print(colors[0])
print(readings[2])

colors.append("Orange") //you can only append strings in this array. appending adds to the end of the array.
colors.insert("Purple", at: 2)  //"insert" allows you to insert an element at the specified index and subsequent elements are pushed back an index.
print(colors)
colors.remove(at: 0)
print(colors.count)
print(colors.contains("Black"))

// DICTIONARIES (HASHMAPS)
// "name" and "job" are the keys and "Taylor" and "Singer" are the respected values.
let employee = [
    "name": "Taylor",
    "job": "Singer"
]
print(employee["job", default: "Unknown"])

// SETS
// A collection of items that cannot have duplicates and the order doesn't matter.
var set = Set([1, 1, 3, 5, 7, 9])
print(set)  //will print the set in random order and ignore duplicates.
set.insert(10)
set.contains(11)    //will run instantly regardless of the amount of items in the set.

// ENUMS
// Defines a group of related values. You can also write all of the cases on a single line, but with commas separating them.
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
var day = Weekday.monday
day = .friday   //assumes friday is a case from the Weekday enum bc the prev statement specifies it.
print(day)

// TYPE ANNOTATIONS
var score1: Double = 0  //by default score1 will be an int but you assigned it as a Double
let player: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true

// In swift, arrays and arraylists (Java) are the same because swift's arrays have dynamic sizing with append and etc.
// longhand: var albums: Array<String> = ["Red", "Fearless"]
var albums: [String] = ["Red", "Fearless"]
// longhand: var user1: Dictionary<String, String> = ["id": "@twostraws"]
var user1: [String: String] = ["id": "@twostraws"]
var books1: Set<String> = Set(["The Bluest Eye", "Foundation"])

// In swift, you either create an array and immediately assign all its elements like above, or you create an empty array to add elements later like below. You can't create an empty array and specify a fixed size bc arrays have dynamic sizing in swift.
var teams: [String] = [String]()
var clues = [String]()  //same as above but uses type inference

enum UIStyle {
    case light, dark, system
}
var style: UIStyle = .light //style is a variable of type enum UIStyle and has the value (case) of light.

// CONDITIONS
// You can also place the "else if" and "else" statements on a new line and use () around the conditions if you want like Java.
let age1 = 16
if age1 < 12 {
    print("You can't vote.")
} else if age1 < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.")
}

let temp = 26
if temp > 20 && temp < 30 {
    print("It's a nice day")    //you can also use || instead of &&
}

// SWITCH STATEMENTS
enum Weather {
    case sun, rain, wind
}
let forecast = Weather.sun

//switch statements require you to take into consideration all cases, using a default takes care of this as well.
//indentation doesn't matter (like in all of swift), but this indentation is common practice.
switch forecast {
case .sun:
    print("A nice day.")
case .rain:
    print("Pack an umbrella.")
default:
    print("Should be okay.")
}

// TERNARY CONDITIONAL OPERATOR
// A simple way to specifically write an if and else statement that returns a value.
// thought-process: is age >= 18? if it is, return "Yes", else return "No".
let myAge = 18
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)

// LOOPS
// C-Style for-loop is removed in Swift
// iterates through every element in the "platforms" array.
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in platforms {
    print("Swift works on \(os)")   //could you have used "i" as the variable instead of "os".
}

// iterates through every key-value pair in the "ages" dictionary.
let ages = ["Alice": 30, "Bob": 25, "Charlie": 35]
for (name, age) in ages {
    print("\(name) is \(age) years old")
}

// iterates through 1 to 4 inclusive (can also be used to just print something 4 times). Equivalent to C-Style: for (int i = 1; i <= 4; i++)
for i in 1...4 {
    print("5 * \(i) is \(5 * i)")
}
// iterates through 0 to 4 (not including 5).
for i in 0..<5 {
    print(i)
}
// iterates through 3 to 5 (you can have a different starting point)
for i in 3..<6 {
    print (i)
}

// Stride gives you the most control and is most similar to a C-style for-loop.
// "from" is the initial value, "to" is the condition (same as <), and "by" is the increment update.
// You can use "through" instead of "to" to include the value (same as <=).
for i in stride(from: 2, to: 7, by: 2) {
    print(i)
}

// "_" is used when a variable is not needed, however, you can still just use "i".
var lyric = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
}
print (lyric)

//simple while loop
var count = 10
while count > 0 {
    print("\(count)...")
    count -= 1
}
print("Go!")

//while loop that uses "continue" to instantly go on to the next iteration. There's also "break" which breaks out of the current loop.
let files = ["me.jpg", "work.txt", "sophie.jpg"]
for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    print(file)
}

// FUNCTIONS
// You must specify the type for parameters in the function definition. For example, in "number: Int", you must include the ": Int".
func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(number: 8)

func rollDice() -> Int {
    return Int.random(in: 1...6)    //you can optionally remove the "return" keyword if the function has a return type with "->" and there is only one line/expression.
}
let result = rollDice()
print(result)

// RETURNING MULTIPLE VALUES FROM FUNCTIONS
// An example of a tuple is (firstName: "Taylor", lastName: "Swift")
// Tuples allow you to group values into a single compound value. These values can all be different types.
// Here, "firstName" and "lastName" are the 'elements' of the tuple and "Taylor" and "Swift" are the values of the tuple. Elements can be named or unnamed.
func getUser() -> (firstName: String, lastName: String) {
    return (firstName: "Taylor", lastName: "Swift")
}
let user2 = getUser()
print("Name: \(user2.firstName) \(user2.lastName)")

//how to access unnamed elements
let person = ("John", "Doe", 30)
print(person.0)
print(person.1)
print(person.2)

// Tuple decomposition is a group of variables directly assigned to the values from a tuple, based on their order. This allows you to retrieve the values of a tuple without assigning the tuple to a single variable (like user2 above) and using dot notation.
// Here, (f, l) is called the tuple decomposition.
let (f, l) = getUser()
print("First name: \(f), Last name: \(l)")

// Partial decomposition is the same, but it allows you to ignore some values from the tuple by using an underscore.
let (f1, _) = getUser()
print("First name: \(f1)")

// CUSTOMIZING PARAMETER LABELS
// you can optionally not add the parameter name in the function call argument, but you must use a "_ " right before the parameter in the function definition.
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO WORLD"
let result1 = isUppercase(string)   //normally it would be isUppercase(string: string)

// you can also add a second parameter name (internal name) after the original to be used in the function body.
// here, "x" is the external parameter name and "number" is the internal parameter name.
func printTimesTable(x number: Int) {
    for i in 1...3 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(x: 5)

// PROVIDING DEFAULT VALUES FOR PARAMETERS
// you can assign a parameter (x) a default value (false), and if a function call is missing this argument, it will default to the default value.
func greet(person: String, x: Bool = false) {
    if x {
        print("Welcome, \(person)")
    }
    else {
        print("Hi, \(person)")
    }
}
greet(person: "Tim", x: true)
greet(person: "Taylor")

// HANDLING ERRORS IN FUNCTIONS
// "throws" in the function signature indicates the function can throw errors.
// "-> String" in the function signature indicates the function returns a String.
// The "do" block groups code that can throw errors (equivalent to "try" in Java).
// "try" in Swift indicates that the specific function call right after it can throw an error.
// It must be used in a "do" block because it is part of a group of code that may throw errors.
// "catch" handles the error thrown within the "do" block.
// You must have a default catch statement to handle any errors not specifically caught.
enum PasswordError: Error {
    case short, obvious     //if a type like an Enum conforms to the 'Error' protocol, it can be used with 'throw', 'try', 'catch', and 'throws'.
}
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}
do {
    let result = try checkPassword("12345")
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

// CLOSURES
// closures are a block of code that acts as a function but can be passed around and assigned to variables.
// here, "sayHello1" is a constant assigned a closure, which is the {...} (including the code inside the brackets).
// closures will have an "= {" to show you that it is a closure, different from functions and computed properties.
// closures can be assigned to either a "let" or "var".
let sayHello1 = {
    print("hello")
}
sayHello1()

// if you want to add parameters to a closure, simply add it in the same way as an actual function like "(name: String) -> String" right after the first bracket. The "in" keyword separates the parameters and return type from the closure's body.
let sayHello2 = { (name: String) -> String in
    return "Hi, \(name)!"
}
print(sayHello2("Justin"))

// Above, closures were assigned to variables/constants. Here, a closure is treated as an argument for a function.
// The filter function is a built-in function for arrays that only takes in 1 parameter. That parameter must be a closure.
// Additionally, the closure that you write must return a boolean.
// You don't need to know the underlying implementation of the filter function.
// Essentially, it iterates through each element in the array.
// The closure is executed for each element, with the element passed as the closure's parameter.
// If the closure returns true, the element is added to the new array.
// After the process repeats for all elements, it returns the new array.
// In the example, after the filter function, it will be "let onlyT = ["Tiffany", "Tasha"]". And "print(onlyT)" will print ["Tiffany", "Tasha"].
let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]
let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})
print(onlyT)

// TRAILING CLOSURES AND SHORTHAND SYNTAX
// Trailing closure syntax: removed the parentheses because the closure is the last and only argument.
// Removed parameter name with its type, return type, 'in' keyword, and 'return' statement.
// Shorthand argument name: $0 is used to refer to the first parameter (in this case there is just one) which is assigned each element in the array.
let onlyTshort = team.filter {
    $0.hasPrefix("T")
}
print(onlyTshort)

// STRUCTS
// Structs are a way to group related 'stored properties' (variables/constants) and functions into a single entity.
// A memberwise initializer is the name of the default initializer if you don't define one. Initializers help you set up all stored properties.
// When you create an instance/object of a struct like "Album(title: "Red", artist: "Taylor Swift")", it instantly calls the initializer.
// Whether you have a custom initializer or the default one, every stored property must be assigned a value when you create an object of a struct.
struct Album {
    let title: String       //stored property
    let artist: String      //stored property
    var isReleased = true   //stored property with default value
      
    //this is what the default initializer looks like, you can optionally remove it.
    init(title: String, artist: String, isReleased: Bool = true) {
        self.title = title
        self.artist = artist
        self.isReleased = isReleased
    }
    func printSummary() {
        print("\(title) by \(artist)")
    }
    // The mutating keyword before a function allows a function to modify its stored properties.
    // You can also just directly modify it though like "red.isReleased = true".
    mutating func removeFromSale() {
        isReleased = false
    }
}
var red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)        //object.property to retrieve a stored property of the object
red.printSummary()      //object.method which calls a method of the object
red.removeFromSale()    //call the mutating function to change isReleased to false
print(red.isReleased)   //output: false

// COMPUTED PROPERTIES
// Stored properties are fields that store values which a struct uses.
// Computed properties are properties that don't store values, but compute them based on the stored properties.
// They have a get block which returns a value based on stored properties and an optional set block to modify stored properties.
// Called with 'object.computedProperty' for the getter.
// Called with 'object.computedProperty = ...' for the setter.
// The dot notation is similar to retrieving a stored property, just now, you are retrieving a computed property, which is based on the stored properties.
// The set block uses the reserved keyword "newValue" which is the right side of 'object.computedProperty = ...'.
// Think of "area" as the computed property that returns a Double. Don't think of it as a variable that's of type Double, even though that's what it looks like.
// It uses "var" (never "let") to show that the computed value (the return value) can change depending on the stored properties.
// The syntax is like this to be similar to stored properties. It is to emphasize that computed properties just return a computation based on stored properties or change the values of stored properties.
/*
 How to differentiate between these 3:
 Function:              func functionName(...) { ... }
 Closure:               let variable = { ... }
 Computed Property:     var property: Type { ... }
 */
struct Rectangle {
    var width: Double
    var height: Double
    
    // example computed property
    var area: Double {
        get {
            return width * height //returns a Double
        }
        set {
            width = sqrt(newValue)
            height = sqrt(newValue)
        }
    }
}
var rect = Rectangle(width: 10, height: 5)
print(rect.area)  // Calls getter, Output: 50.0
rect.area = 64    // Calls setter, sets width and height based on newValue
print(rect.width)  // Output: 8.0, this is simply accessing the stored property/field, with object.field.
print(rect.height) // Output: 8.0

// another example
struct Employee {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllowed - vacationTaken //returns an Int
        }
        set {
            vacationAllowed = vacationTaken + newValue
        }
    }
}

// PROPERTY OBSERVERS
// Property observers are used to monitor changes to stored properties.
// The two property observers are "didSet" and "willSet".
// "didSet" is called immediately after the property's value is changed.
// "willSet" is called just before the property's value is changed.
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
var game = Game()
game.score += 10
game.score -= 3

// CUSTOM INITIALIZERS
struct Player {
    let name: String
    let number:Int
    
    // btw, custom inits cannot return anything
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

// ACCESS CONTROL
// Access modifiers can be applied to classes, structs, enums, protocols, functions, initializers, subscripts, stored properties, computed properties.
//
// open: Accessible and modifiable from anywhere. Classes and methods marked with open can also be subclassed and overridden outside the module.
// public: Accessible and modifiable from anywhere, not subclassable or overridable outside the defining module.
// internal: (default) Accessible and modifiable from anywhere within the same module.
// fileprivate: Accessible and modifiable from anywhere within the same file.
// private(set): Accessible from outside the defining type (struct, class, etc), but only modifiable within the defining type.
// private: Only accessible and modifiable within the defining type. Nothing outside can access or modify it.
struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
var account = BankAccount(funds: 100)
print(account.funds)
account.deposit(amount: 50)
print(account.funds)
// doing "account.funds += 50" will result in an error because funds is a private(set).

// STATIC PROPERTIES AND METHODS
// Static properties and methods are shared for all instances of the struct and can be accessed without creating an instance.
// 'version' and 'settingsFile' are static, so they are shared for all instances. You can call it through: 'struct.staticProperty'.
// additionally, calling a static property/method with an instance wouldn't work.
// you can only change static fields if they use "var" instead of "let" like 'AppData.settingsFile = "config.json"'.
struct AppData {
    static let version = "1.3 beta 2"
    static var settingsFile = "settings.json"
}
print(AppData.version)

// CLASSES
// Classes must have custom initializers unlike structs. Swift doesn't provide a default one.
// If a child class doesn't have a custom initializer, it will call its parent's.
// If a child class does have a custom initializer, it will call its own followed by its parent's with a 'super.init()' inside.
class Employee1 {
    let hours: Int
    init(hours: Int) {
        self.hours = hours
    }
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}
// The Developer class is a subclass/child class of the Employee1 class.
// It has access to the parent class's stored properties and methods.
// The "override" keyword overrides the parent function. This function will be called instead of the parent's now.
class Developer: Employee1 {
    func work() {
        print("I'm coding for \(hours) hours a day.")
    }
    override func printSummary() {
        print("I spend \(hours) hours a day fighting over tabs vs spaces.")
    }
}
let dev = Developer(hours: 8)
dev.work()
dev.printSummary()

// Because 'Car' is a child of 'Vehicle', it's init will run followed by its parent.
// However, in its init, it must call it's parent's init with super.init and pass in the argument 'e', which is assigned to 'isElectric'.
class Vehicle {
    let isElectric: Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric    //self.isElectric = false
    }
}
class Car: Vehicle {
    let isConvertible: Bool
    init(e: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: e)
    }
}
let toyota = Car(e: false, isConvertible: true)
print(toyota.isConvertible)
print(toyota.isElectric)

// In both a struct and class, 'Actor()' is an instance. However, for a struct, the instance is a 'value type' and for a class, the instance is a 'reference type'.
// In a struct, actor1 holds the actual data of the instance Actor() directly (no arrow).
// So when we do actor2 = actor1, actor2 gets a copy of actor1's Actor().
// This means that when we change a field's value from actor2, actor1's field isn't affected.
// Likewise, if we have var x = 30, and var y = x (y is 30 now), then y is assigned a copy of x's value.
// So later when we do y = 50, x is still equal to 30.

// In a class, actor1 points to the instance Actor().
// When we do actor2 = actor1, actor2 now points to the same Actor() instance as actor1.
// So when we change a field's value from actor2, actor1's field is also changed.
class Actor {
    var name = "Nicolas Cage"
}
var actor1 = Actor()
var actor2 = actor1
actor2.name = "Tom Cruise"
print(actor2.name)  //prints "Tom Cruise"
print(actor1.name)  //also prints "Tom Cruise"

// You can have a deinit, which runs right before an object is destroyed.
// The purpose is to clean up resources or perform other tasks before the instance is destroyed.
class Site {
    let id: Int
    init(id: Int) {
        self.id = id
        print("Site \(id): I've been created")
    }
    deinit {
        print("Site \(id): I've been destroyed!")
    }
}
// the 'site' variable is a local variable in the loop and is destroyed at the end of each iteration.
for i in 1...3 {
    let site = Site(id: i)
    print("Site \(site.id): I'm in control!")
}

// Unlike for structs, in classes, stored properties can be modified even if the instance (singer) is a "let", given that the properties are "var".
class Singer {
    var name = "Adele"
}
let singer = Singer()
singer.name = "Justin"
print(singer.name)

// PROTOCOLS
// Similar to interfaces in Java. They define abstract methods and properties for classes, structs, and enums to adopt.
// The classes, structs, and enums that adopt a protocol, must have all of the protocol's methods (with custom bodies) and properties.
// Types can conform to multiple protocols using a comma to separate.
// If you want a type to be a child class and have protocols, specify the parent class first, followed by the protocols with commas separating.
// Here, 'name' has a '{ get }' which is saying that in every type that conforms to 'Vehicles', 'name' must be at least accessible.
// 'currentPassengers' has a '{ get set}' which is saying that in every type that conforms to 'Vehicles', 'currentPassengers' must be both accessible and modifiable.
protocol Vehicles {
    var name: String { get }
    var currentPassengers: Int { get set }
    
    func estimateTime(distance: Int) -> Int
    func travel(distance: Int)
}
// note that "Cars: Vehicles" is the same type of syntax as stating that 'Cars' is a child class of 'Vehicles'.
struct Cars: Vehicles {
    let name = "Car"                // can be `let` or `var` as it only needs to be accessible.
    var currentPassengers = 1       // must be `var` to meet the `get set` requirement.
    
    func estimateTime(distance: Int) -> Int {
        distance/50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    func openSunroof() {    //you can also have other methods
        print("It's a nice day!")
    }
}
// We have "vehicle: Vehicles" instead of "vehicle: Cars" bc it offers more flexibility for other objects that are objects of structs that also conform to the 'Vehicles' protocol.
func commute(distance: Int, vehicle: Vehicles) {
    if vehicle.estimateTime(distance: distance) > 100 {
        print("Too slow!")
    } else {
        vehicle.travel(distance: distance)
    }
}
let car = Cars()
commute(distance: 100, vehicle: car)

// EXTENSIONS
// Normally, 'var word = "hello"' is shorthand for 'var word = String("hello").
// "String", "Int", "Double", etc, are all built-in structs in Swift that have their own methods.
// For example, 'word.count()', is in the form of 'object.method' and calls the 'count' method inside 'String'.
// So, extensions allow you to add additional functionality (methods, computed properties, etc) to built-in structs, classes, etc, without modifying their original functionality.
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)    //returns a new string with leading and trailing whitespace, and newline characters removed.
    }
    // In this case, "mutating" is used because trim() updates the value of the quote1 string object it is called on, even though there aren't any stored properties in a struct.
    mutating func trim() {
        self = self.trimmed()   //modifies the original string by trimming whitespace and newline characters.
    }
    // 'lines' is a computed property that returns a string array, each element being a line in the original string.
    var lines: [String] {
        self.components(separatedBy: .newlines)     //this is implicitly inside a get block and is returned.
    }
}
var quote1 = "   The truth is rarely pure and never simple   "
let trimmed = quote1.trimmed()
print(trimmed)
quote1.trim()
let lyrics = """
But I keep cruising
Can't stop, won't stop moving
"""
print(lyrics.lines.count)   //'object.computedproperty' returns the string array, followed by '.count' which returns the number of elements in the array.

// PROTOCOL EXTENSIONS
// Remember that normally, extension are for built-in structs like 'String' where you can add extra methods.
// However, you can also add extensions for protocols like 'Collection', which are conformed to by many built-in structs like 'Array' and 'Dictionary'.
// This means a struct like 'Array' requires implementations of all of Collection's abstract methods and properties.
// However, when you add an extension to a protocol like 'Collection', you aren't saying that all of the structs that conform to the protocol must have their own implementation of "isNotEmpty".
// You are just saying that every struct will now have an added 'isNotEmpty' computed property in their struct that already has a body.
extension Collection {
    // 'isNotEmpty' is a computed property with one 'get' statement.
    // 'isEmpty' is a computed property part of Collection that was implemented by the Array struct.
    var isNotEmpty: Bool {
        isEmpty == false    //implicit 'get' block and no 'set' block. there is also an implicit "self.isEmpty == false" where self refers to "guests". note that the keyword 'self' has multiple uses and this is one of them.
    }
}
let guests = ["Mario", "Luigi", "Peach"]
if guests.isNotEmpty {      //'object.computedProperty' which accesses the get block and returns it.
    print("Guest count: \(guests.count)")
}

// OPTIONALS
// An optional is either a value or nil (no value).
// Accessing a value inside an optional is called unwrapping.
var lastName: String?   //example declaration. 'lastName' can be a String or nil.

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]
let peachOpposite = opposites["Peach"]  //peachOpposite is an optional string

// "!" forcefully unwraps an optional. "if let" and "guard let" is more recommended.
var name2: String? = "Jun"
if name2 != nil {
    print(name2!) // force unwrap
}

// The pattern "if let" safely unwraps optionals.
// Check if opposites["Mario"] is nil or contains a value; if it contains a value, marioOpposite is assigned it and execute the body, else skip the body.
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

// "if let" runs the block if the optional has a value.
// "guard let" does the opposite and runs the block if the optional does NOT have a value (it is nil).
// It is always used with "else". "guard let" is usually used in functions bc it checks if an optional is nil, and if it is, it exits out of the loop, and doesn't allow the rest of the code to run.
// Meanwhile, with "if let", if the optional is nil, the code inside the block is skipped, but the rest of the code in the function is still run.
func printSquare(number: Int?) {
    guard let num = number else {
        print("missing input")
        return
    }
    print("\(num) x \(num) is \(num * num)")
}
print(printSquare(number: nil))

// NIL COALESCING
// Use a "??" to provide a default value if the optional is nil.
//'tvShows.randomElement()' returns an optional String, which is one of the elements, or nil if the array is empty.
// if 'randomElement()' return nil, 'favorite' is assigned "None".
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"
// 'Int(input) attempts to convert 'input' to an 'Int'.
// 'Int(input)' is an optional Int (it can be an Int or a nil). Since 'input' is "", the conversion fails, and when 'Int(input)' fails, it returns nil.
let input = ""
let num = Int(input) ?? 0
print(num)  //Output: 0

// OPTIONAL CHAINING
// The process of calling methods on an optional that might currently be nil.
// If the optional contains a value, then the method succeeds. if the optional is nil, the method call also returns nil.
// If any part of a chain is nil, the entire assignment doesn't happen.
// If 'names.randomElement()' returns nil, then it doesn't even read the rest (doesn't read '.uppercased()') and the entire right side is nil. so 'chosen' = nil.
// If 'chosen' = nil, then it would return "No one" in the next line.
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased()    //you also use "?" after a method call to specify that it returns something that's either a value or nil.
print("Next in line: \(chosen ?? "No one")")

// OPTIONAL TRY?
// Another way to handle errors thrown by functions instead of using a do-catch block.
// If 'getUser(id: 23)' results in an error, the 'try?' converts it to a nil.
// Since 'user = nil', the 'if' block won't run and the 'else' block will run.
// If the function does not throw an error, then 'user' is just assigned the result of the function's return statement, and the 'if' block does run.
enum UserError: Error {
    case badID, networkFailed
}
func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}
if let user = try? getUser(id: 23) {
    print("User: \(user)")          //does not run
} else {
    print("Failed to get user.")    //does run
}
