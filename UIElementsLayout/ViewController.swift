//
//  ViewController.swift
//  UIElementsLayout
//
//  Created by justine.janaite on 21/08/2020.
//  Copyright © 2020 justine.janaite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftButtonUp: UIButton!
    @IBOutlet weak var rightButtonUp: UIButton!
    @IBOutlet weak var leftButtonDown: UIButton!
    @IBOutlet weak var rightButtonDown: UIButton!
    
    
    @IBOutlet var styleOutletCollection: [UIButton]!
    
    @IBOutlet weak var myLable: UILabel!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleUI()
    }
       
        
        func styleUI() {
        mainImageView.layer.cornerRadius = 10
        mainImageView.layer.borderWidth = 2
        mainImageView.layer.borderColor = UIColor.black.cgColor
        
        
        myLable.layer.cornerRadius = 10
        myLable.layer.borderWidth = 2
        myLable.layer.borderColor = UIColor.black.cgColor
            
        styleOutletCollection.forEach { button in
            button.layer.cornerRadius = 10
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.black.cgColor
        }
    }
//MARK:- Logic Style to myLable, Buttons and Image
    func changeButtonImage(with image: String){
        leftButtonUp.setImage(UIImage(named: image), for: .normal)
        leftButtonUp.tintColor = .white
        leftButtonUp.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
        self.view.backgroundColor = UIColor.black
    }
    
    func changeButtonImageTwo(with image: String){
        leftButtonDown.setImage(UIImage(named: image), for: .normal)
        leftButtonDown.tintColor = .blue
        leftButtonDown.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
        self.view.backgroundColor = UIColor.gray
    }
    
    func changeButtonImageThree(with image: String){
        rightButtonUp.setImage(UIImage(named: image), for: .normal)
        rightButtonUp.tintColor = .yellow
        rightButtonUp.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
        self.view.backgroundColor = UIColor.blue
    }
    
    func changeButtonImageFour(with image: String){
        rightButtonDown.setImage(UIImage(named: image), for: .normal)
        rightButtonDown.tintColor = .orange
        rightButtonDown.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
        self.view.backgroundColor = UIColor.green
    }
    
    func changeTextLable(){
        self.myLable.text = "HomeWork"
    }
    
//MARK:- IBAction for three more buttons
    @IBAction func touchDragOutsideTapped(_ sender: Any) {
        print("touchDragOutsideTapped")
        changeButtonImage(with: "home.png")
    }
    
    
    @IBAction func touchDragInsideTapped(_ sender: Any) {
        print("touchDragInsideTapped")
        changeButtonImageTwo(with: "star.png")
    }
    
    
    @IBAction func touchUpInsideTapped(_ sender: Any) {
        print("touchUpInsideTapped")
        changeButtonImageThree(with: "home.png")
        changeTextLable()
    }
    
    @IBAction func touchUpOutsideTapped(_ sender: Any) {
         print("touchUpOutsideTapped")
        changeButtonImageFour(with: "star.png")
    }
    
}

