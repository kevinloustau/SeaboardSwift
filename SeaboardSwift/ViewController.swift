//
//  ViewController.swift
//  SeaboardSwift
//
//  Created by kl on 03/02/2018.
//  Copyright © 2018 kl. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, SeaboardDelegate  {
    
    let myRise: Seaboard = Seaboard()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myRise.connect()
        myRise.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    func seabaordDidSendMessage(_ message: String!) {
        guard let newMessage = message else { return }
        print("Send message: \(newMessage)")
    }
    
    func seaboardDidGet(_ message: MIDIMessage!) {
        guard let newMessage = message else { return }
        print("pressure: \(newMessage.velocity)")
    }
    

}

