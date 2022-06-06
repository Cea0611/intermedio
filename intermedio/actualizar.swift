//
//  actualizar.swift
//  intermedio
//
//  Created by ISSC_412_2022 on 28/04/22.
//

import Cocoa

class actualizar: NSViewController {
    @IBOutlet weak var id: NSTextField!
    @IBOutlet weak var nombre: NSTextField!
    @IBOutlet weak var apellidos: NSTextField!
    @IBOutlet weak var edad: NSTextField!
    @IBOutlet weak var date: NSTextField!
    @IBOutlet weak var estadoC: NSComboBox!
    
    @IBOutlet var z: ViewController!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        estadoC.isEditable = false
        id.isEditable = false
        
        
        
        
    }
    
    
    
}
