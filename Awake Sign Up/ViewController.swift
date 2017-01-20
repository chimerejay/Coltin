//
//  ViewController.swift
//  Awake Sign Up
//
//  Created by Eman Josh on 1/11/17.
//  Copyright © 2017 Awake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBOutlet weak var aImage: UIImageView!
    @IBOutlet weak var signUpButton: UIButton!
    
    // Text Fields
    
    @IBOutlet weak var fistName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func signUpButtonPressed(_ sender: Any) {
        aImage.isHidden = true
        signUpButton.isHidden = true
        view.backgroundColor = UIColor.white
    }
    
    
    
}










