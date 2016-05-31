//
//  ViewController.swift
//  Calculator
//
//  Created by Taylor Mott on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var entryField = UILabel()
    
    var displayValue: Float {
        get {
            let entry = entryField.text ?? "0"
            return (entry as NSString).floatValue
        } set {
            entryField.text = "\(newValue)"
            isTyping = false
        }
    }
    var isTyping = false
    var stack = Stack()
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blackColor()
        
        //adding more entryField attributes
        entryField.text = "0"
        entryField.textAlignment = .Right
        entryField.textColor = .whiteColor()
        entryField.font = .systemFontOfSize(48)
        setupButtons()
        
    }
    
    func setupButtons() {
        //set colors & add buttons
        //(later) adding border details, title/color/font, and ACTION-TARGET
        
        zeroButton.backgroundColor = .grayColor()
        zeroButton.layer.borderWidth = 0.6
        zeroButton.layer.borderColor = UIColor.blackColor().CGColor
        zeroButton.setTitle("0", forState: .Normal)
        zeroButton.setTitleColor(.whiteColor(), forState: .Normal)
        zeroButton.titleLabel?.font = .systemFontOfSize(24.0)
        zeroButton.addTarget(self, action: #selector(appendDigit), forControlEvents: .TouchUpInside)
        
        oneButton.backgroundColor = .grayColor()
        oneButton.layer.borderWidth = 0.6
        oneButton.layer.borderColor = UIColor.blackColor().CGColor
        oneButton.setTitle("1", forState: .Normal)
        oneButton.setTitleColor(.whiteColor(), forState: .Normal)
        oneButton.titleLabel?.font = .systemFontOfSize(24.0)
        oneButton.addTarget(self, action: #selector(appendDigit), forControlEvents: .TouchUpInside)
        
        twoButton.backgroundColor = .grayColor()
        twoButton.layer.borderWidth = 0.6
        twoButton.layer.borderColor = UIColor.blackColor().CGColor
        twoButton.setTitle("2", forState: .Normal)
        twoButton.setTitleColor(.whiteColor(), forState: .Normal)
        twoButton.titleLabel?.font = .systemFontOfSize(24.0)
        twoButton.addTarget(self, action: #selector(appendDigit), forControlEvents: .TouchUpInside)
        
        threeButton.backgroundColor = .grayColor()
        threeButton.layer.borderWidth = 0.6
        threeButton.layer.borderColor = UIColor.blackColor().CGColor
        threeButton.setTitle("3", forState: .Normal)
        threeButton.setTitleColor(.whiteColor(), forState: .Normal)
        threeButton.titleLabel?.font = .systemFontOfSize(24.0)
        threeButton.addTarget(self, action: #selector(appendDigit), forControlEvents: .TouchUpInside)
        
        fourButton.backgroundColor = .grayColor()
        fourButton.layer.borderWidth = 0.6
        fourButton.layer.borderColor = UIColor.blackColor().CGColor
        fourButton.setTitle("4", forState: .Normal)
        fourButton.setTitleColor(.whiteColor(), forState: .Normal)
        fourButton.titleLabel?.font = .systemFontOfSize(24.0)
        fourButton.addTarget(self, action: #selector(appendDigit), forControlEvents: .TouchUpInside)
        
        fiveButton.backgroundColor = .grayColor()
        fiveButton.layer.borderWidth = 0.6
        fiveButton.layer.borderColor = UIColor.blackColor().CGColor
        fiveButton.setTitle("5", forState: .Normal)
        fiveButton.setTitleColor(.whiteColor(), forState: .Normal)
        fiveButton.titleLabel?.font = .systemFontOfSize(24.0)
        fiveButton.addTarget(self, action: #selector(appendDigit), forControlEvents: .TouchUpInside)
        
        sixButton.backgroundColor = .grayColor()
        sixButton.layer.borderWidth = 0.6
        sixButton.layer.borderColor = UIColor.blackColor().CGColor
        sixButton.setTitle("6", forState: .Normal)
        sixButton.setTitleColor(.whiteColor(), forState: .Normal)
        sixButton.titleLabel?.font = .systemFontOfSize(24.0)
        sixButton.addTarget(self, action: #selector(appendDigit), forControlEvents: .TouchUpInside)
        
        sevenButton.backgroundColor = .grayColor()
        sevenButton.layer.borderWidth = 0.6
        sevenButton.layer.borderColor = UIColor.blackColor().CGColor
        sevenButton.setTitle("7", forState: .Normal)
        sevenButton.setTitleColor(.whiteColor(), forState: .Normal)
        sevenButton.titleLabel?.font = .systemFontOfSize(24.0)
        sevenButton.addTarget(self, action: #selector(appendDigit), forControlEvents: .TouchUpInside)
        
        eightButton.backgroundColor = .grayColor()
        eightButton.layer.borderWidth = 0.6
        eightButton.layer.borderColor = UIColor.blackColor().CGColor
        eightButton.setTitle("8", forState: .Normal)
        eightButton.setTitleColor(.whiteColor(), forState: .Normal)
        eightButton.titleLabel?.font = .systemFontOfSize(24.0)
        eightButton.addTarget(self, action: #selector(appendDigit), forControlEvents: .TouchUpInside)
        
        nineButton.backgroundColor = .grayColor()
        nineButton.layer.borderWidth = 0.6
        nineButton.layer.borderColor = UIColor.blackColor().CGColor
        nineButton.setTitle("9", forState: .Normal)
        nineButton.setTitleColor(.whiteColor(), forState: .Normal)
        nineButton.titleLabel?.font = .systemFontOfSize(24.0)
        nineButton.addTarget(self, action: #selector(appendDigit), forControlEvents: .TouchUpInside)
        
        enterButton.backgroundColor = .purpleColor()
        enterButton.layer.borderWidth = 0.6
        enterButton.layer.borderColor = UIColor.blackColor().CGColor
        enterButton.setTitle("↵", forState: .Normal)
        enterButton.setTitleColor(.whiteColor(), forState: .Normal)
        enterButton.titleLabel?.font = .systemFontOfSize(24.0)
        enterButton.addTarget(self, action: #selector(ViewController.enter), forControlEvents: .TouchUpInside)
        
        plusButton.backgroundColor = .orangeColor()
        plusButton.layer.borderWidth = 0.6
        plusButton.layer.borderColor = UIColor.blackColor().CGColor
        plusButton.setTitle("+", forState: .Normal)
        plusButton.setTitleColor(.whiteColor(), forState: .Normal)
        plusButton.titleLabel?.font = .systemFontOfSize(24.0)
        plusButton.addTarget(self, action: #selector(ViewController.operate(_:)), forControlEvents: .TouchUpInside)
        
        minusButton.backgroundColor = .orangeColor()
        minusButton.layer.borderWidth = 0.6
        minusButton.layer.borderColor = UIColor.blackColor().CGColor
        minusButton.setTitle("−", forState: .Normal)
        minusButton.setTitleColor(.whiteColor(), forState: .Normal)
        minusButton.titleLabel?.font = .systemFontOfSize(24.0)
        minusButton.addTarget(self, action: #selector(ViewController.operate(_:)), forControlEvents: .TouchUpInside)
        
        multiplyButton.backgroundColor = .orangeColor()
        multiplyButton.layer.borderWidth = 0.6
        multiplyButton.layer.borderColor = UIColor.blackColor().CGColor
        multiplyButton.setTitle("✕", forState: .Normal)
        multiplyButton.setTitleColor(.whiteColor(), forState: .Normal)
        multiplyButton.titleLabel?.font = .systemFontOfSize(24.0)
        multiplyButton.addTarget(self, action: #selector(ViewController.operate(_:)), forControlEvents: .TouchUpInside)
        
        divideButton.backgroundColor = .orangeColor()
        divideButton.layer.borderWidth = 0.6
        divideButton.layer.borderColor = UIColor.blackColor().CGColor
        divideButton.setTitle("÷", forState: .Normal)
        divideButton.setTitleColor(.whiteColor(), forState: .Normal)
        divideButton.titleLabel?.font = .systemFontOfSize(24.0)
        divideButton.addTarget(self, action: #selector(ViewController.operate(_:)), forControlEvents: .TouchUpInside)
        
        //add buttons (and label) to view
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
        
        let entryFieldTrailingConstraint = NSLayoutConstraint(item: entryField, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        // the following line is easier than constraining to top of all following buttons, right?
        
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
        
        let multiplyButtonLeadingConstraint = NSLayoutConstraint(item: multiplyButton, attribute: .Leading, relatedBy: .Equal, toItem: sixButton, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let multiplyButtonTrailingConstraint = NSLayoutConstraint(item: multiplyButton, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([fourButtonLeadingConstraint, fourButtonTrailingConstraint, fiveButtonLeadingConstraint, fiveButtonTrailingConstraint, sixButtonLeadingConstraint, sixButtonTrailingConstraint, multiplyButtonLeadingConstraint, multiplyButtonTrailingConstraint])
        
        //and then the matching widths
        
        let fourButtonWidth = NSLayoutConstraint(item: fourButton, attribute: .Width, relatedBy: .Equal, toItem: fiveButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        let fiveButtonWidth = NSLayoutConstraint(item: fiveButton, attribute: .Width, relatedBy: .Equal, toItem: sixButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        let sixButtonWidth = NSLayoutConstraint(item: sixButton, attribute: .Width, relatedBy: .Equal, toItem: multiplyButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        let multiplyButtonWidth = NSLayoutConstraint(item: multiplyButton, attribute: .Width, relatedBy: .Equal, toItem: fourButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        view.addConstraints([fourButtonWidth, fiveButtonWidth, sixButtonWidth, multiplyButtonWidth])
        
        
        // MARK: third row of buttons (1,2,3,minus)
        
        let oneButtonTopConstraint = NSLayoutConstraint(item: oneButton, attribute: .Top, relatedBy: .Equal, toItem: fourButton, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let twoButtonTopConstraint = NSLayoutConstraint(item: twoButton, attribute: .Top, relatedBy: .Equal, toItem: fiveButton, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let threeButtonTopConstraint = NSLayoutConstraint(item: threeButton, attribute: .Top, relatedBy: .Equal, toItem: sixButton, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let minusButtonTopConstraint = NSLayoutConstraint(item: minusButton, attribute: .Top, relatedBy: .Equal, toItem: multiplyButton, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([oneButtonTopConstraint, twoButtonTopConstraint, threeButtonTopConstraint, minusButtonTopConstraint])
        
        
        // side to side constraints
        
        let oneButtonLeadingConstraint = NSLayoutConstraint(item: oneButton, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let oneButtonTrailingConstraint = NSLayoutConstraint(item: oneButton, attribute: .Trailing, relatedBy: .Equal, toItem: twoButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let twoButtonLeadingConstraint = NSLayoutConstraint(item: twoButton, attribute: .Leading, relatedBy: .Equal, toItem: oneButton, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let twoButtonTrailingConstraint = NSLayoutConstraint(item: twoButton, attribute: .Trailing, relatedBy: .Equal, toItem: threeButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let threeButtonLeadingConstraint = NSLayoutConstraint(item: threeButton, attribute: .Leading, relatedBy: .Equal, toItem: twoButton, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let threeButtonTrailingConstraint = NSLayoutConstraint(item: threeButton, attribute: .Trailing, relatedBy: .Equal, toItem: minusButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let minusButtonLeadingConstraint = NSLayoutConstraint(item: minusButton, attribute: .Leading, relatedBy: .Equal, toItem: threeButton, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let minusButtonTrailingConstraint = NSLayoutConstraint(item: minusButton, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([oneButtonLeadingConstraint, oneButtonTrailingConstraint, twoButtonLeadingConstraint, twoButtonTrailingConstraint, threeButtonLeadingConstraint, threeButtonTrailingConstraint, minusButtonLeadingConstraint, minusButtonTrailingConstraint])
        
        //and then the matching widths
        
        let oneButtonWidth = NSLayoutConstraint(item: oneButton, attribute: .Width, relatedBy: .Equal, toItem: twoButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        let twoButtonWidth = NSLayoutConstraint(item: twoButton, attribute: .Width, relatedBy: .Equal, toItem: threeButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        let threeButtonWidth = NSLayoutConstraint(item: threeButton, attribute: .Width, relatedBy: .Equal, toItem: minusButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        let minusButtonWidth = NSLayoutConstraint(item: minusButton, attribute: .Width, relatedBy: .Equal, toItem: oneButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        view.addConstraints([oneButtonWidth, twoButtonWidth, threeButtonWidth, minusButtonWidth])
        
        // MARK: last row of buttons (0[double-wide], enter, plus)
        
        let zeroButtonTopConstraint = NSLayoutConstraint(item: zeroButton, attribute: .Top, relatedBy: .Equal, toItem: oneButton, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let enterButtonTopConstraint = NSLayoutConstraint(item: enterButton, attribute: .Top, relatedBy: .Equal, toItem: threeButton, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let plusButtonTopConstraint = NSLayoutConstraint(item: plusButton, attribute: .Top, relatedBy: .Equal, toItem: minusButton, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([zeroButtonTopConstraint, enterButtonTopConstraint, plusButtonTopConstraint])
        
        //now these guys need to constrain to bottom of entire view if this thing's gonna fill out
        
        let zeroButtonBottomConstraint = NSLayoutConstraint(item: zeroButton, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let enterButtonBottomConstraint = NSLayoutConstraint(item: enterButton, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        let plusButtonBottomConstraint = NSLayoutConstraint(item: plusButton, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([zeroButtonBottomConstraint, enterButtonBottomConstraint, plusButtonBottomConstraint])
        
        
        // side to side constraints
        
        let zeroButtonLeadingConstraint = NSLayoutConstraint(item: zeroButton, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let zeroButtonTrailingConstraint = NSLayoutConstraint(item: zeroButton, attribute: .Trailing, relatedBy: .Equal, toItem: enterButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let enterButtonLeadingConstraint = NSLayoutConstraint(item: enterButton, attribute: .Leading, relatedBy: .Equal, toItem: zeroButton, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let enterButtonTrailingConstraint = NSLayoutConstraint(item: enterButton, attribute: .Trailing, relatedBy: .Equal, toItem: plusButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        let plusButtonLeadingConstraint = NSLayoutConstraint(item: plusButton, attribute: .Leading, relatedBy: .Equal, toItem: enterButton, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        let plusButtonTrailingConstraint = NSLayoutConstraint(item: plusButton, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([zeroButtonLeadingConstraint, zeroButtonTrailingConstraint, enterButtonLeadingConstraint, enterButtonTrailingConstraint, plusButtonLeadingConstraint, plusButtonTrailingConstraint])
        
        //and then widths, but uhhhhhhh we'll hafta double that zero button width
        
        let zeroButtonWidth = NSLayoutConstraint(item: zeroButton, attribute: .Width, relatedBy: .Equal, toItem: enterButton, attribute: .Width, multiplier: 2.0, constant: 0)
        
        let enterButtonWidth = NSLayoutConstraint(item: enterButton, attribute: .Width, relatedBy: .Equal, toItem: plusButton, attribute: .Width, multiplier: 1.0, constant: 0)
        
        let plusButtonWidth = NSLayoutConstraint(item: plusButton, attribute: .Width, relatedBy: .Equal, toItem: zeroButton, attribute: .Width, multiplier: 0.5, constant: 0)
        
        view.addConstraints([zeroButtonWidth, enterButtonWidth, plusButtonWidth])
        
        //that looks bad, but I suppose it's time to contrain 'em all heightwise
        
        //MARK: Height fun
        
        let sevenButtonHeight = NSLayoutConstraint(item: sevenButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let eightButtonHeight = NSLayoutConstraint(item: eightButton, attribute: .Height, relatedBy: .Equal, toItem: sevenButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        //okay, did seven to eight and eight to seven, will just constrain the rest to match eight
        
        let nineButtonHeight = NSLayoutConstraint(item: nineButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let divideButtonHeight = NSLayoutConstraint(item: divideButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let fourButtonHeight = NSLayoutConstraint(item: fourButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let fiveButtonHeight = NSLayoutConstraint(item: fiveButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let sixButtonHeight = NSLayoutConstraint(item: sixButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let multiplyButtonHeight = NSLayoutConstraint(item: multiplyButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let oneButtonHeight = NSLayoutConstraint(item: oneButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let twoButtonHeight = NSLayoutConstraint(item: twoButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let threeButtonHeight = NSLayoutConstraint(item: threeButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let minusButtonHeight = NSLayoutConstraint(item: minusButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let zeroButtonHeight = NSLayoutConstraint(item: zeroButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let enterButtonHeight = NSLayoutConstraint(item: enterButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        let plusButtonHeight = NSLayoutConstraint(item: plusButton, attribute: .Height, relatedBy: .Equal, toItem: eightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        view.addConstraints([sevenButtonHeight, eightButtonHeight, nineButtonHeight, divideButtonHeight, fourButtonHeight, fiveButtonHeight, sixButtonHeight, multiplyButtonHeight, oneButtonHeight, twoButtonHeight, threeButtonHeight, minusButtonHeight, zeroButtonHeight, enterButtonHeight, plusButtonHeight])
    }
    
    //YES!!! it worked. well the constraints, anyway
    
    //MARK: functions and such
    
    func appendDigit(button: UIButton) {
        guard let digit = button.currentTitle else { return }
        if isTyping {
            let displayText = entryField.text ?? ""
            entryField.text = displayText + digit
        } else {
            entryField.text = digit
            isTyping = true
        }
    }
    
    func enter() {
        isTyping = false
        stack.push(displayValue)
        stack.log()
    }
    
    func operate(button: UIButton) {
        guard let operation = button.currentTitle else { return }
        if isTyping {
            enter()
        }
        
        if stack.count() >= 2 {
            let float1 = stack.pop()!
            let float2 = stack.pop()!
            switch operation {
            case "÷":
                displayValue = (float2 / float1)
            case "✕":
                displayValue = (float2 * float1)
            case "−":
                displayValue = (float2 - float1)
            case "+":
                displayValue = (float2 + float1)
            default:
                stack.push(float1)
                stack.push(float2)
                
            }
            
            enter()
        }
        
    }
}





