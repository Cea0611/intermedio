//
//  Person.swift
//  intermedio
//
//  Created by ISSC_412_2022 on 06/04/22.
//

import Foundation

class personOBJ: NSObject{
    @objc dynamic var id:Int32
    @objc dynamic var nombre:String
    @objc dynamic var apellidos:String
    @objc dynamic var edad:Int32
    @objc dynamic var date:String
    @objc dynamic var estadoC:String
    
    init(_ id:Int32, _ nombre:String, _ apellidos:String, _ edad:Int32, _ date:String,_ estadoC:String){
        self.id = id
        self.nombre = nombre
        self.apellidos = apellidos
        self.edad = edad
        self.date = date
        self.estadoC = estadoC
    }
    
}
