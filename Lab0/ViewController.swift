//
//  ViewController.swift
//  Lab0
//
//  Created by Brady Boedy on 8/24/26.
//

import UIKit

class ViewController: UIViewController {

    // Connecting objects to outlets
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var majorNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    
    // Functions
    @IBAction func stepperDidChange(_ sender: UIStepper) {

       numberOfPetsLabel.text = "\(Int(sender.value))"
   }
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {

            // Let's us chose the title we have selected from the segmented control
            let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)

            // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
            // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I am studying \(majorNameTextField.text!). I own \(numberOfPetsLabel.text!) pet(s). It is \(morePetsSwitch.isOn) that I want more pets."

        
            // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

            // A way to dismiss the box once it pops up
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

            // Passing this action to the alert controller so it can be dismissed
            alertController.addAction(action)

            present(alertController, animated: true, completion: nil)
        }
    
    
    //changes the background to red
    @IBAction func changeBackground(_ sender: UIButton) {
        view.backgroundColor = .red
    }
    
    //changes the background back to white
    
    @IBAction func revertBackground(_ sender: UIButton) {
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //I changed the text inputs to be rounded instead of square
        //I had to thicken the border of the textbox too because when I rounded the edges you could barely see it
        firstNameTextField.layer.cornerRadius = 15
        firstNameTextField.layer.masksToBounds = true
        firstNameTextField.layer.borderWidth = 2

        lastNameTextField.layer.cornerRadius = 15
        lastNameTextField.layer.masksToBounds = true
        lastNameTextField.layer.borderWidth = 2

        schoolNameTextField.layer.cornerRadius = 15
        schoolNameTextField.layer.masksToBounds = true
        schoolNameTextField.layer.borderWidth = 2
        
        majorNameTextField.layer.cornerRadius = 15
        majorNameTextField.layer.masksToBounds = true
        majorNameTextField.layer.borderWidth = 2
    }


}

