//
//  ViewController.swift
//  toDoApp
//
//  Created by Seda Gültekin on 3.08.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    @IBAction func detailButton(_ sender: Any) {
        let toDoModel = ToDo(toDo_title: "rudy",toDo_text: "rudye su vermeyi unutma!!!")
        performSegue(withIdentifier: "detail", sender: toDoModel)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="detail"{
            if let toDoModel = sender as? ToDo{
                let gidilecekVC = segue.destination as! Detail
                gidilecekVC.toDoModel = toDoModel
            }
        }
            
    }
}

