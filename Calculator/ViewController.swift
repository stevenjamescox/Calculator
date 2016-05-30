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
        //does the above line even work? perhaps only when there's text
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
        //view.addSubview(zeroButton)
        //view.addSubview(oneButton)
        //view.addSubview(twoButton)
        //view.addSubview(threeButton)
        //view.addSubview(fourButton)
        //view.addSubview(fiveButton)
        //view.addSubview(sixButton)
        view.addSubview(sevenButton)
        view.addSubview(eightButton)
        view.addSubview(nineButton)
        //view.addSubview(enterButton)
        //view.addSubview(plusButton)
        //view.addSubview(minusButton)
        //view.addSubview(multiplyButton)
        view.addSubview(divideButton)
        
        setupContraints()
        
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
        
        // MARK: entryField constraints
        
        let entryFieldTopConstraint = NSLayoutConstraint(item: entryField, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 0)
        
        let entryFieldLeadingConstraint = NSLayoutConstraint(item: entryField, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let entryFieldTrailingConstraint = NSLayoutConstraint(item: entryField, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        // the following is easier than constraining to top of all following buttons, right?
        
        let entryFieldHeight = NSLayoutConstraint(item: entryField, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 111.0)
        
        view.addConstraints([entryFieldTopConstraint, entryFieldLeadingConstraint, entryFieldTrailingConstraint, entryFieldHeight])
        
        // MARK: first row of button size & constraints, (7,8,9,div)
        
        //first, the top row's top constraints
        
        let sevenButtonTopConstraint = NSLayoutConstraint(item: sevenButton, attribute: .Top, relatedBy: .Equal, toItem: entryField, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let eightButtonTopConstraint = NSLayoutConstraint(item: eightButton, attribute: .Top, relatedBy: .Equal, toItem: entryField, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let nineButtonTopConstraint = NSLayoutConstraint(item: nineButton, attribute: .Top, relatedBy: .Equal, toItem: entryField, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let divideButtonTopConstraint = NSLayoutConstraint(item: divideButton, attribute: .Top, relatedBy: .Equal, toItem: entryField, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([sevenButtonTopConstraint, eightButtonTopConstraint, nineButtonTopConstraint, divideButtonTopConstraint])
        
        // uhhhh can we do the width with like a 1/4 here?
        // well that didn't work the way I thought it might ("relatedBy: 0.25" or something like that, will just constrain to each other
        
        let sevenButtonLeadingConstraint = NSLayoutConstraint(item: sevenButton, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let sevenButtonTrailingConstraint = NSLayoutConstraint(item: sevenButton, attribute: .Trailing, relatedBy: .Equal, toItem: eightButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let eightButtonLeadingConstraint = NSLayoutConstraint(item: eightButton, attribute: .Leading, relatedBy: .Equal, toItem: sevenButton, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let eightButtonTrailingConstraint = NSLayoutConstraint(item: eightButton, attribute: .Trailing, relatedBy: .Equal, toItem: nineButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let nineButtonLeadingConstraint = NSLayoutConstraint(item: nineButton, attribute: .Leading, relatedBy: .Equal, toItem: eightButton, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let nineButtonTrailingConstraint = NSLayoutConstraint(item: nineButton, attribute: .Trailing, relatedBy: .Equal, toItem: divideButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let divideButtonLeadingConstraint = NSLayoutConstraint(item: divideButton, attribute: .Leading, relatedBy: .Equal, toItem: nineButton, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let divideButtonTrailingConstraint = NSLayoutConstraint(item: divideButton, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([sevenButtonLeadingConstraint, sevenButtonTrailingConstraint, eightButtonLeadingConstraint, eightButtonTrailingConstraint, nineButtonLeadingConstraint, nineButtonTrailingConstraint, divideButtonLeadingConstraint, divideButtonTrailingConstraint])
        
        
        ///let's see if these suckers work
        
        ////weelllll they don't really work cuz I haven't constrained the bottom of each button
        /// and I still haven't made their widths equal to one another, gotta do that now
        
        
        let sevenButtonWidth = NSLayoutConstraint(item: sevenButton, attribute: .Width, relatedBy: .Equal, toItem: eightButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        let eightButtonWidth = NSLayoutConstraint(item: eightButton, attribute: .Width, relatedBy: .Equal, toItem: nineButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        let nineButtonWidth = NSLayoutConstraint(item: nineButton, attribute: .Width, relatedBy: .Equal, toItem: divideButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        let divideButtonWidth = NSLayoutConstraint(item: divideButton, attribute: .Width, relatedBy: .Equal, toItem: sevenButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        view.addConstraints([sevenButtonWidth, eightButtonWidth, nineButtonWidth, divideButtonWidth])
        
        ///welp, it looks right for now, can't do much with the height until the next rows are set. BUT, I am concerned that the entryLabel isn't looking filled it. its space is correct, but not color
        
        // MARK: second row of buttons (4,5,6,mult)
        
        
        let fourButtonTopConstraint = NSLayoutConstraint(item: fourButton, attribute: .Top, relatedBy: .Equal, toItem: sevenButton, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let fiveButtonTopConstraint = NSLayoutConstraint(item: fiveButton, attribute: .Top, relatedBy: .Equal, toItem: eightButton, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let sixButtonTopConstraint = NSLayoutConstraint(item: sixButton, attribute: .Top, relatedBy: .Equal, toItem: nineButton, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let multiplyButtonTopConstraint = NSLayoutConstraint(item: multiplyButton, attribute: .Top, relatedBy: .Equal, toItem: divideButton, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([fourButtonTopConstraint, fiveButtonTopConstraint, sixButtonTopConstraint, multiplyButtonTopConstraint])
        
        // okay now the side to side constraints
        
        
        let fourButtonLeadingConstraint = NSLayoutConstraint(item: fourButton, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let fourButtonTrailingConstraint = NSLayoutConstraint(item: fourButton, attribute: .Trailing, relatedBy: .Equal, toItem: fiveButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let fiveButtonLeadingConstraint = NSLayoutConstraint(item: fiveButton, attribute: .Leading, relatedBy: .Equal, toItem: fourButton, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let fiveButtonTrailingConstraint = NSLayoutConstraint(item: fiveButton, attribute: .Trailing, relatedBy: .Equal, toItem: sixButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let sixButtonLeadingConstraint = NSLayoutConstraint(item: sixButton, attribute: .Leading, relatedBy: .Equal, toItem: fiveButton, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let sixButtonTrailingConstraint = NSLayoutConstraint(item: sixButton, attribute: .Trailing, relatedBy: .Equal, toItem: multiplyButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let multiplyButtonLeadingConstraint = NSLayoutConstraint(item: multiplyButton, attribute: .Leading, relatedBy: .Equal, toItem: nineButton, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let multiplyButtonTrailingConstraint = NSLayoutConstraint(item: divideButton, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([fourButtonLeadingConstraint, fourButtonTrailingConstraint, fiveButtonLeadingConstraint, fiveButtonTrailingConstraint, sixButtonLeadingConstraint, sixButtonTrailingConstraint, multiplyButtonLeadingConstraint, multiplyButtonTrailingConstraint])
        
        
    }
    
}








