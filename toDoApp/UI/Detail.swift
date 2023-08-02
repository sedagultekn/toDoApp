//
//  Detail.swift
//  toDoApp
//
//  Created by Seda Gültekin on 3.08.2023.
//

import UIKit

class Detail: UIViewController {
    @IBOutlet weak var guncelleButton: UIButton!
    @IBOutlet weak var tfTitle: UITextField!
    
    @IBOutlet weak var tfToDo: UITextField!
    
    var toDoModel: ToDo?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let t = toDoModel{
            tfTitle.text = t.toDo_title
            tfToDo.text = t.toDo_text}
    }
    


    @IBAction func guncelleButton(_ sender: Any) {
    
    
        if let title = tfTitle.text,let toDo = tfToDo.text{
            guncelle(toDo_title: title, toDo_text: toDo)
        }
    }
    
    
    func guncelle(toDo_title:String,toDo_text:String){
        
        print("guncel: \(toDo_text) - \(toDo_title)")
    }
}
