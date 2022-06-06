import Cocoa

class tabla: NSViewController {

    let alert = NSAlert()
    
    @IBOutlet  var vcTabla:ViewController!
    var bandera = false
    var index:Int!
    @IBOutlet weak var eliminado: NSTextField!
    @objc dynamic var person: [personOBJ] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        //var eliminad:Int = eliminado.integerValue
        
    }
    @IBAction func eliminar(_ sender: Any) {
        //print("aba")
        if person.contains(where: {$0.id == eliminado.intValue}){
            let indexs = person.map({$0.id})
            
            index = indexs.firstIndex(of: eliminado.intValue)
            
            vcTabla.person.remove(at: index)
            person.remove(at: index)
        } else{
            print("No lo encontre we :/")
        }
        //person.remove(at: eliminado.integerValue-1)
        //alert.messageText = "Campo eliminado."
        //alert.alertStyle = .critical
        //alert.runModal()
    }
    
    @IBAction func modificar(_ sender: Any) {
        if person.contains(where: {$0.id == eliminado.intValue}){
            let indexs = person.map({$0.id})
            
            index = indexs.firstIndex(of: eliminado.intValue)!
            
            dismiss(self)
            performSegue(withIdentifier: "modifySegue", sender: self)
        }
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if (segue.identifier == "modifySegue"){
            (segue.destinationController as! agregar).vc = vcTabla
            bandera = true
            (segue.destinationController as! agregar).bandera = bandera
            (segue.destinationController as! agregar).posicion = index
            
        }
        
        
    }
    
    
}
