//
//  DogParkDetailViewController.swift
//  DogParkLocator
//
//  Created by Brian Fiala on 10/20/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit

class DogParkDetailViewController: UIViewController {
    
    @IBOutlet weak var dogParkImage: UIImageView!
    @IBOutlet weak var dogParkName: UITextView!
    @IBOutlet weak var dogParkDetails: UITextView!
    @IBOutlet weak var dogParkHours: UITextView!
    
    var dogPark : DogParkObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.dogParkName.text = self.dogPark.dogParkName
        self.dogParkDetails.text = self.dogPark.dogParkDetails
        self.dogParkImage.image = UIImage(named: self.dogPark.dogParkImage)
        self.dogParkHours.text = "Hours:\n" + self.dogPark.dogParkHours
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
