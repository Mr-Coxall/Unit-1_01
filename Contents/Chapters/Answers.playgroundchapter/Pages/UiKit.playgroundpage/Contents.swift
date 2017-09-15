// Created on: Jan-2017
// Created by: Mr. Coxall
// Created for: ICS3U
// This program is the UIKit solution for displaying school name and mascot

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var schoolNameLabel : UILabel!
    var mascotLabel : UILabel!
    var motherTeresaButton : UIButton!
    var stJoeButton : UIButton!
    var stMarkButton : UIButton!
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        motherTeresaButton = UIButton()
        motherTeresaButton.setTitle("Mother Teresa HS", for: .normal)
        motherTeresaButton.setTitleColor(.blue, for: .normal)
        motherTeresaButton.addTarget(self, action: #selector(showTextMotherTeresa), for: .touchUpInside)
        view.addSubview(motherTeresaButton)
        motherTeresaButton.translatesAutoresizingMaskIntoConstraints = false
        motherTeresaButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        motherTeresaButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        stJoeButton = UIButton()
        stJoeButton.setTitle("St. Joe HS", for: .normal)
        stJoeButton.setTitleColor(.blue, for: .normal)
        stJoeButton.addTarget(self, action: #selector(showTextStJoe), for: .touchUpInside)
        view.addSubview(stJoeButton)
        stJoeButton.translatesAutoresizingMaskIntoConstraints = false
        stJoeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        stJoeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        stMarkButton = UIButton()
        stMarkButton.setTitle("St. Mark HS", for: .normal)
        stMarkButton.setTitleColor(.blue, for: .normal)
        stMarkButton.titleLabel?.textAlignment = .center
        stMarkButton.addTarget(self, action: #selector(showTextStMark), for: .touchUpInside)
        view.addSubview(stMarkButton)
        stMarkButton.translatesAutoresizingMaskIntoConstraints = false
        stMarkButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        stMarkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        schoolNameLabel = UILabel()
        //helloWorldLabel.text = "Hello, World!"
        schoolNameLabel.textAlignment = .center
        view.addSubview(schoolNameLabel)
        schoolNameLabel.translatesAutoresizingMaskIntoConstraints = false
        schoolNameLabel.topAnchor.constraint(equalTo: motherTeresaButton.bottomAnchor, constant: 20).isActive = true
        schoolNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        mascotLabel = UILabel()
        //helloWorldLabel.text = "Hello, World!"
        mascotLabel.textAlignment = .center
        view.addSubview(mascotLabel)
        mascotLabel.translatesAutoresizingMaskIntoConstraints = false
        mascotLabel.topAnchor.constraint(equalTo: schoolNameLabel.bottomAnchor, constant: 20).isActive = true
        mascotLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func showTextMotherTeresa() {
        // show Hello, World!
        schoolNameLabel.text = "Mother Teresa HS"
        mascotLabel.text = "Titans"
    }
    
    func showTextStJoe() {
        // show Hello, World!
        schoolNameLabel.text = "St. Joe HS"
        mascotLabel.text = "Jaguars"
    }
    
    func showTextStMark() {
        // show Hello, World!
        schoolNameLabel.text = "St. Mark HS"
        mascotLabel.text = "Lions"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
