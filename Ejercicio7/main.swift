// EJERCICIO 7

 // (EJERCICIO 1 con reduce)

// Array con números integrados
var num : [Int] = [3,5,8,32,17]

// Sumamos los elementos del Array
var arraySum = num.reduce(0, +)

// Calculamos el total de
// elementos del Array
var length = num.count

// Sacamos la media
var media = Double(arraySum)/Double(length)

print(num)
print("La media es: ", media)


 // (EJERCICIO 4 con map)

print("Introduce una frase: ")
if let frase = readLine()
{
    // Separa las palabras de la frase
    let palabras = frase.split(separator: " ").map { String($0) }
    
    // Crear Array para las palabras censuradas
    var palabrasCensuradas = [String]()
    
    // Recorrer cada palabra
    for palabra in palabras {
        // Comprobar si empieza por "j", "p" o "m" (minúsculas o mayúsculas)
        if palabra.lowercased().hasPrefix("j") || palabra.lowercased().hasPrefix("p")
            || palabra.lowercased().hasPrefix("m") {
            
            // Añadirle asteríscos a las palabras censuradas
            palabrasCensuradas.append("*****")
        }
        else {
            // Si no, agregar la frase sin censura.
            palabrasCensuradas.append(String(palabra))
        }
    }
    
    // Crear la frase
    let resultado = palabrasCensuradas.joined(separator: " ")
    
    print(resultado)
}

