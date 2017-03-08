//
//  AddParkViewController.swift
//  DogParkLocator
//
//  Created by Brian Fiala on 11/13/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit
import CoreData

class AddItemViewController: UIViewController, NSCoding {
    
    @IBOutlet weak var addName: UITextField!
    @IBOutlet weak var addImage: UITextField!
    @IBOutlet weak var addHours: UITextField!
    @IBOutlet weak var addDetails: UITextView!
     
    var newDogPark : DogParkObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickedCancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func clickedSave(sender: AnyObject) {
        let myMOC = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        newDogPark = NSEntityDescription.insertNewObjectForEntityForName("DogParkObject", inManagedObjectContext: myMOC!) as! DogParkObject
        
        newDogPark.dogParkName = addName.text
        newDogPark.dogParkImage = addImage.text
        newDogPark.dogParkHours = addHours.text
        newDogPark.dogParkDetails = addDetails.text
        
        var saveErr : NSError?
        if myMOC!.save(&saveErr) != true {
            println("Insert to DB Error: \(saveErr?.localizedDescription)")
            return
        }
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
