//
//  ViewController.swift
//  browser2
//
//  Created by Nino Rorudan on 11/5/17.
//  Copyright © 2017 The NTMC Foundation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var myImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        
        //URL for the session
        let url = URL(string: "https://api.fixer.io/2000-04-04")
        
        //this is a completion hander, essentially it executes AFTER the task is complete
        //when task is complete, we are going to get 3 variables, data, response and error.
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            
        //mechanism below is essentially the basic way to load an image onto the app.  
        //first is you make sure you have an ImageView in the Main Story Board, specify the URL, specify the Task Completion 
        //and use an if / else mechanism to specify if there is an error or not in the image
            
            if error != nil
            {
                print("ERROR")
            }
            else
            {
                //self.myImageView.image = UIImage(data: data!)
                
                //do catch mechanism; similar to "try catch finally".  essentially what we want to do is parse the JSON data from the URL.  if an error occurs, the do catch mechanism should appropriately throw the error
                //and catch it - respond accordingly.
                do
                {
                    //line below is needed to make JSON data; essentially the data found in the specified URL is going to be converted to JSON data.
                
                    
                    let myJSON = try JSONSerialization.jsonObject(with: data!,  options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                
                    print (myJSON)
                    
                }
                catch
                {
                    //handle the error
                }
                
            }
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

