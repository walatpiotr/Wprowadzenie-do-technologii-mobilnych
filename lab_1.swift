import Foundation

var str = "Hello, playground"
print(str)


//zad1\\
var var1 = "string"
var var2 = 14
var var3 = 3.14

//zad2\\

var str1 : String = "string2"
var int1 : Int = 15
var double1 : Double = 1.67

//zad3\\

var conc1 = var1 + " " + String(var2) + " " + String(var3)
print(conc1)
var conc2 = "\(var1) \(var2) \(var3)"
print(conc2)

//zad4\\

let owoce1 = [String]()
let odglosy1 = [String: Float]()

var owoce2 = ["apple", "orange", "pear"]
var odglosy2 = ["kot": "meow", "pies": "hau"]

//zad5\\

owoce2.append("pineapple")
print(owoce2)
odglosy2["fox"] = "???"
print(odglosy2)

//zad6\\

let lotto1 = [String: [Int]]()

var lotto2 = [
    "29-11-14": [4, 5, 21, 30, 31, 49],
    "27-11-14": [5, 8, 10, 19, 23, 40]]

print(lotto2)

//zad7\\

var emptyDictionary1 : [Character: Int] = [:]

//zad8\\

let numbers = [1,2,3,4,5,6,7,8,9,10]
var ex = [Character: Int]()
for i in numbers {
    ex[Character(UnicodeScalar(64 + i)!)] = i
}
print(ex)

//zad9\\

for i in lotto2{
    print("Losowanie z dnia \(i.key) \n")
    for j in i.value{
        print("- \(j)")
    }
}

//zad10\\

func nwd(number1:Int, number2:Int) -> Int{

    var a = number1
    var b = number2
    repeat{
        if(a>b){
            a-=b;
        }else{
            b-=a;
        }
        }while (a != b)
    return a
}

//zad11\\

func nwdprinter(a : Int, b : Int) -> ( divider: Int, quotient1 : Int, quotient2 : Int){
    let nwd_answer = nwd(number1: a, number2: b)
    return(nwd_answer, a/nwd_answer, b/nwd_answer)
}

print(nwdprinter(a: 32, b: 24))

//zad12\\

func cipher(ciag: String) -> String{
    
    let str: String = ciag.uppercased()
    var newstr:String = ""
    for i in str{
        newstr.append(szyfr(char: i))
    }
    print(newstr)
    return(newstr)
}

func szyfr(char: Character) -> (Character){
    switch char{
    case "A":
        return "G"
    case "G":
        return "A"
    case "D":
        return "E"
    case "E":
        return "D"
    case "R":
        return "Y"
    case "Y":
        return "R"
    case "P":
        return "O"
    case "O":
        return "P"
    case "L":
        return "U"
    case "U":
        return "L"
    case "K":
        return "I"
    case "I":
        return "K"    
    default:
    return char
    }
}

var ciag = "abfDSAFADBNFfadsfFASDG"
cipher(ciag: ciag)


//zad13\\

var modulo2 = {(num: Int) -> Int in return num % 2}

for i in lotto2{
    print("Losowanie z dnia \(i.key) \n")
    let isEvenLotto = (i.value).map(modulo2)
    for j in isEvenLotto{
        print("- \(j)")
    }
}

//zad14\\

class NamedObject {
    var Name = "";
    
    func describe() -> String{
        return "Object called " + Name
    }


//zad15\\

    class Sphere : NamedObject {

        var radius : Double;

        init(rad: Double, name: String) {

            self.radius = rad
            super.init()
            self.Name=name;
        
        }
    
        var volume: Double {
            get {
                return(4.0 / 3.0 * Double.pi * pow(radius, 3))
            }
            set {
                radius = pow((3 * newValue / (4 * Double.pi)) , (1 / 3))
            }
        }

        override func describe() -> String {
            return "Object called " + Name + " having radius: " + String(radius) + " and V = " + String(round(volume))
        }

    }
}

var test = NamedObject();
test.Name = "Tom";
print(test.describe())

var test2 = NamedObject.Sphere(rad:3.0, name:"kula");
print(test2.describe())

test2.volume = 14
print(test2.describe())