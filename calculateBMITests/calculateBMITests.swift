//
//  calculateBMITests.swift
//  calculateBMITests
//
//  Created by cries on 2019/02/28.
//  Copyright © 2019年 cries. All rights reserved.
//

import XCTest
@testable import calculateBMI

class calculateBMITests: XCTestCase {
    
    let inputViewController = InputViewController()
    
    let memo: PlaceHolderedTextView = PlaceHolderedTextView.init(frame: CGRect.init(), textContainer: NSTextContainer.init())
    let calculation: UIButton = UIButton.init()
    let save: UIButton = UIButton.init()
    let delete: UIButton = UIButton.init()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        inputViewController.memoInput = memo
        inputViewController.dataSave = save
        inputViewController.dataDelete = delete
        inputViewController.calculation = calculation
    }

    override func tearDown() {
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testValidate() {
        let reqStature: UITextField = UITextField.init()
        let reqWeight: UITextField = UITextField.init()
        reqStature.text = ""
        reqWeight.text = ""
        inputViewController.statureInput = reqStature
        inputViewController.weightInput = reqWeight
        XCTAssertNil(inputViewController.validate())
    }
    
    func testOncreate() {
        inputViewController.loadViewIfNeeded()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
