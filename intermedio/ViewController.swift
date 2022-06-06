//
//  ViewController.swift
//  intermedio
//
//  Created by ISSC_412_2022 on 06/04/22.
//

import Cocoa

class ViewController: NSViewController {
    
    @objc dynamic var person: [personOBJ] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    }

    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showSegue"{
            (segue.destinationController as! tabla).person = person
            (segue.destinationController as! tabla).vcTabla = self
        } else if (segue.identifier == "addSegue"){
            (segue.destinationController as! agregar).vc = self
        }
        
    }
}

