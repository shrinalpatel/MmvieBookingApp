//
//  ViewController.swift
//  MovieBookingApp
//
//  Authors: Shrinal Patel (301204864)
//           Ridham Patel (301207688)
//           Pushparaj Sanjeevan (301213104)
// Date: 29/03/22

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var credentialSwitch: UISwitch!
    @IBOutlet weak var themeButton: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var signinButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(themeChanged), name: .themeChange, object: nil)
        logo.layer.cornerRadius = 70
        themeChanged()
    }
    
    @objc func themeChanged() {
        self.view.backgroundColor = ThemeDB.selectedTheme.backgroundColor
        credentialSwitch.onTintColor = ThemeDB.selectedTheme.buttonBackgroundColor
        signinButton.backgroundColor = ThemeDB.selectedTheme.buttonBackgroundColor
        logo.backgroundColor = ThemeDB.selectedTheme.buttonBackgroundColor
        themeButton.tintColor = ThemeDB.selectedTheme.buttonBackgroundColor
    }


}

