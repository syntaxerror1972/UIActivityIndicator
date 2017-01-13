//
//  ViewController.swift
//  UIActivityIndicator
//
//  Created by Shrawan Shinde on 13/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activityIndicator = UIActivityIndicatorView();
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.gray
        
        let date = Date().addingTimeInterval(10)
        let timer = Timer(fireAt: date, interval: 0, target: self, selector: #selector(runCode), userInfo: nil, repeats: false)
        RunLoop.main.add(timer, forMode: RunLoopMode.commonModes)
     
        startLoading();
    }
    
    //use when required call directly this function 
    //it creates loader in between screen
    
    func startLoading(){
        activityIndicator.center = self.view.center;
        activityIndicator.hidesWhenStopped = true;
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.white;
        view.addSubview(activityIndicator);
        
        activityIndicator.startAnimating();
        UIApplication.shared.beginIgnoringInteractionEvents();
        
    }
    
    //function called after 10 seconds
    func runCode(){
        stopLoading();
    }
    
    //it dismiss the loader
    
    func stopLoading(){
        activityIndicator.stopAnimating();
        UIApplication.shared.endIgnoringInteractionEvents();
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

