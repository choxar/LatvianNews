//
//  ThemeViewController.swift
//  LatvianNews
//
//  Created by elina.zambere on 17/02/2021.
//

import UIKit

class AppereanceViewController: UIViewController {
    
    var DarkOn = Bool()
    var LightOn = Bool()
    
    @IBOutlet weak var DarkSwitch: UISwitch!
    @IBOutlet weak var LightSwitch: UISwitch!
    
    let window = UIApplication.shared.keyWindow
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detectMode()
    }
    
    func detectMode(){
        if self.traitCollection.userInterfaceStyle == .dark {
            print("dark mode")
            DarkSwitch.isOn = true
            LightSwitch.isOn = false
            
        }else{
            DarkSwitch.isOn = false
            LightSwitch.isOn = true
            print("light mode")
        }
    }
    
    
    @IBAction func DarkAction(_ sender: UISwitch) {
    
        
        DarkSwitch.isOn = true
        LightSwitch.isOn = false
        window?.overrideUserInterfaceStyle = .dark
        defaults.set(sender.isOn, forKey: "DarkSwitch")
        defaults.removeObject(forKey: "LightSwitch")

    }
    

    @IBAction func LightAction(_ sender: UISwitch) {
        
        DarkSwitch.isOn = false
        LightSwitch.isOn = true
        window?.overrideUserInterfaceStyle = .light
        defaults.set(sender.isOn, forKey: "LightSwitch")
        defaults.removeObject(forKey: "DarkSwitch")

    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
