# DesafioSomaDoisApp
O objetivo é fazer o teste Soma dois passar. 
Dentro do projeto existe um teste que valida se: dada uma lista é possível encontrar um valor, somando dois valores desta lista?

```swift
   func testSomaDois() {
        
        self.measure {
            let numeros = [2,3,6,8,8,14,16,25,32,44,45,57,59,60,62,64,68,70,71,100,260,1505,2000,2200,2450,2607]
            XCTAssertTrue(DesafioSomaDoisController().conseguimosAcharONumero(31, somandoDoisNumerosDaLista: numeros))
            XCTAssertFalse(DesafioSomaDoisController().conseguimosAcharONumero(4, somandoDoisNumerosDaLista: numeros))
        }
    }
``` 

# O Metodo a ser testado

O arquivo DesafioSomaDoisController.swift possui o método conseguimosAcharONumero() que deve ser construido para passar no teste.

```swift
class DesafioSomaDoisController {
    
    func conseguimosAcharONumero(_ valor: Int, somandoDoisNumerosDaLista numbers:[Int]) -> Bool{
        
        // codigo aqui
        
        return false
    }
    
}
```

escreva seu código no local indicado.

A performance da sua soluçao será medida.

divirta-se!

