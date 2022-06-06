//
//  RegistroController.swift
//  intermedio
//
//  Created by ISSC_412_2022 on 06/04/22.
//

import Cocoa

class RegistroController: NSViewController {

    var aidi:Int = 1
    
    @objc dynamic var person: [personOBJ] = [personOBJ(0,"","",0,"00/00/0001","")]
    
    @IBOutlet weak var id: NSTextField!
    @IBOutlet weak var nombre: NSTextField!
    @IBOutlet weak var apellidos: NSTextField!
    @IBOutlet weak var edad: NSTextField!
    @IBOutlet weak var date: NSTextField!
    @IBOutlet weak var estadoC: NSComboBox!
    let alert = NSAlert()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        estadoC.isEditable = false
        id.isEditable = false
        id.stringValue = String(aidi)
    }
    
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        var n: Int = 99
        
        let digitsCharacters = CharacterSet.decimalDigits
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "dd-MM-yyyy"
        let someDate = date.stringValue
        
        if !id.stringValue.isEmpty && !nombre.stringValue.isEmpty && !apellidos.stringValue.isEmpty && !edad.stringValue.isEmpty && !date.stringValue.isEmpty && !estadoC.stringValue.isEmpty && CharacterSet(charactersIn: edad.stringValue).isSubset(of: digitsCharacters) && dateFormatterGet.date(from: someDate) != nil && segue.identifier == "AddSegue"{
            //todo chido
            n = 0
        }
        if id.stringValue.isEmpty{
            //id vacio
            n = 1
        }
        if nombre.stringValue.isEmpty{
            //nombre vacio
            n = 2
        }
        if apellidos.stringValue.isEmpty{
            //apellidos vacio
            n = 3
        }
        if edad.stringValue.isEmpty{
            //edad vacio
            n = 4
        }
        if date.stringValue.isEmpty{
            //fecha nac vacio
            n = 5
        }
        if estadoC.stringValue.isEmpty{
            //estado c vacio
            n = 6
        }
        if !CharacterSet(charactersIn: edad.stringValue).isSubset(of: digitsCharacters){
            //numeros en edad
            n = 7
        }
        if dateFormatterGet.date(from: someDate) == nil{
            //formato mal edad
            n = 8
        }
        if edad.stringValue.isEmpty{
            //estado c vacio
            n = 9
        }
        
        switch n {
        case 0:
            (segue.destinationController as! NSViewController).representedObject = personOBJ(id.intValue, nombre.stringValue, apellidos.stringValue, edad.intValue, date.stringValue, estadoC.stringValue)
            aidi += 1
            break
        case 1:
            alert.messageText = "Error en el ID."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 2:
            alert.messageText = "Llene el campo Nombre."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 3:
            alert.messageText = "Llene el campo Apellidos."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 4:
            alert.messageText = "Llene el campo edad."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 5:
            alert.messageText = "Llene el campo Fecha Nac."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 6:
            alert.messageText = "Llene el campo Estado C."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 7:
            alert.messageText = "Solo numeros en Edad."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 8:
            alert.messageText = "Use el formato indicado."
            alert.alertStyle = .critical
            alert.runModal()
            break
        case 9:
            alert.messageText = "Llene el campo Edad."
            alert.alertStyle = .critical
            alert.runModal()
            break
        default:
            break
        }
    }
    
}
