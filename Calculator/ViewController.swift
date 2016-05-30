//
//  ViewController.swift
//  Calculator
//
//  Created by Taylor Mott on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    
    let entryField = UILabel()
    let zeroButton = UIButton()
    let oneButton = UIButton()
    let twoButton = UIButton()
    let threeButton = UIButton()
    let fourButton = UIButton()
    let fiveButton = UIButton()
    let sixButton = UIButton()
    let sevenButton = UIButton()
    let eightButton = UIButton()
    let nineButton = UIButton()
    let enterButton = UIButton()
    let plusButton = UIButton()
    let minusButton = UIButton()
    let multiplyButton = UIButton()
    let divideButton = UIButton()
    
    
    
    func setupButtons() {
        //set colors & add buttons
        entryField.backgroundColor = .blackColor()
        view.addSubview(entryField)
        zeroButton.backgroundColor = .grayColor()
        oneButton.backgroundColor = .grayColor()
        twoButton.backgroundColor = .grayColor()
        threeButton.backgroundColor = .grayColor()
        fourButton.backgroundColor = .grayColor()
        fiveButton.backgroundColor = .grayColor()
        sixButton.backgroundColor = .grayColor()
        sevenButton.backgroundColor = .grayColor()
        eightButton.backgroundColor = .grayColor()
        nineButton.backgroundColor = .grayColor()
        enterButton.backgroundColor = .purpleColor()
        plusButton.backgroundColor = .orangeColor()
        minusButton.backgroundColor = .orangeColor()
        multiplyButton.backgroundColor = .orangeColor()
        divideButton.backgroundColor = .orangeColor()
        
        
        //add buttons to view
        view.addSubview(entryField)
        view.addSubview(zeroButton)
        view.addSubview(oneButton)
        view.addSubview(twoButton)
        view.addSubview(threeButton)
        view.addSubview(fourButton)
        view.addSubview(fiveButton)
        view.addSubview(sixButton)
        view.addSubview(sevenButton)
        view.addSubview(eightButton)
        view.addSubview(nineButton)
        view.addSubview(enterButton)
        view.addSubview(plusButton)
        view.addSubview(minusButton)
        view.addSubview(multiplyButton)
        view.addSubview(divideButton)
        
}
    
    
    func setupContraints() {
        
        // Turn off translatesAutoresizingMaskIntoConstraints YEAH
        
        entryField.translatesAutoresizingMaskIntoConstraints = false
        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        oneButton.translatesAutoresizingMaskIntoConstraints = false
        twoButton.translatesAutoresizingMaskIntoConstraints = false
        threeButton.translatesAutoresizingMaskIntoConstraints = false
        fourButton.translatesAutoresizingMaskIntoConstraints = false
        fiveButton.translatesAutoresizingMaskIntoConstraints = false
        sixButton.translatesAutoresizingMaskIntoConstraints = false
        sevenButton.translatesAutoresizingMaskIntoConstraints = false
        eightButton.translatesAutoresizingMaskIntoConstraints = false
        nineButton.translatesAutoresizingMaskIntoConstraints = false
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        minusButton.translatesAutoresizingMaskIntoConstraints = false
        multiplyButton.translatesAutoresizingMaskIntoConstraints = false
        divideButton.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: entryField size and constraints
        
        let entryFieldWidth = NSLayoutConstraint(item: entryField, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 1.0, constant: 0)
        
        let entryFieldTopConstraint = NSLayoutConstraint(item: entryField, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 0)
        
        let entryFieldLeadingConstraint = NSLayoutConstraint(item: entryField, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let entryFieldTrailingConstraint = NSLayoutConstraint(item: entryField, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        //
    


}










