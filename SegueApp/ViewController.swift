//
//  ViewController.swift
//  SegueApp
//
//  Created by Hüseyin Kaya on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad() //ilk açtığımda olur fakat başka sayfaya gidip geri geldiğimde olmaz.
        //Lifecycle
        print("viewDidLoad function called")
        nameText.text = "" // Next' e bastıktan sonra geri döndüğümüzde bu olmayacak cunku viewdidLoad çalışmıyor.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    override func viewWillDisappear(_ animated: Bool) { // kullanıcı her an görecek
        print("viewWillDisappear function called")
    }
    override func viewWillAppear(_ animated: Bool) {
        print ("viewWillAppear function called")
    }
    override func viewDidAppear(_ animated: Bool) { // kullanıcı gördü
        print ("viewDidAppear function called")
    }
 
    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            // as -- casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

