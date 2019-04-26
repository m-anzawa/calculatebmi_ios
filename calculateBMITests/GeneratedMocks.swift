// MARK: - Mocks generated from file: calculateBMI/BodyData.swift at 2019-04-26 03:01:13 +0000

//
//  BodyData.swift
//  calculateBMI
//
//  Created by cries on 2019/03/04.
//  Copyright © 2019年 cries. All rights reserved.

import Cuckoo
@testable import calculateBMI

import Foundation


 class MockBodyData: BodyData, Cuckoo.ClassMock {
     typealias MocksType = BodyData
     typealias Stubbing = __StubbingProxy_BodyData
     typealias Verification = __VerificationProxy_BodyData

    private var __defaultImplStub: BodyData?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

     func enableDefaultImplementation(_ stub: BodyData) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
    
     override var date: String {
        get {
            return cuckoo_manager.getter("date",
                superclassCall:
                    
                    super.date
                    ,
                defaultCall: __defaultImplStub!.date)
        }
        
        set {
            cuckoo_manager.setter("date",
                value: newValue,
                superclassCall:
                    
                    super.date = newValue
                    ,
                defaultCall: __defaultImplStub!.date = newValue)
        }
        
    }
    
    
    
     override var stature: String {
        get {
            return cuckoo_manager.getter("stature",
                superclassCall:
                    
                    super.stature
                    ,
                defaultCall: __defaultImplStub!.stature)
        }
        
        set {
            cuckoo_manager.setter("stature",
                value: newValue,
                superclassCall:
                    
                    super.stature = newValue
                    ,
                defaultCall: __defaultImplStub!.stature = newValue)
        }
        
    }
    
    
    
     override var weight: String {
        get {
            return cuckoo_manager.getter("weight",
                superclassCall:
                    
                    super.weight
                    ,
                defaultCall: __defaultImplStub!.weight)
        }
        
        set {
            cuckoo_manager.setter("weight",
                value: newValue,
                superclassCall:
                    
                    super.weight = newValue
                    ,
                defaultCall: __defaultImplStub!.weight = newValue)
        }
        
    }
    
    
    
     override var message: String? {
        get {
            return cuckoo_manager.getter("message",
                superclassCall:
                    
                    super.message
                    ,
                defaultCall: __defaultImplStub!.message)
        }
        
        set {
            cuckoo_manager.setter("message",
                value: newValue,
                superclassCall:
                    
                    super.message = newValue
                    ,
                defaultCall: __defaultImplStub!.message = newValue)
        }
        
    }
    

    

    
    
    
     override func encode(with aCoder: NSCoder)  {
        
            return cuckoo_manager.call("encode(with: NSCoder)",
                parameters: (aCoder),
                escapingParameters: (aCoder),
                superclassCall:
                    
                    super.encode(with: aCoder)
                    ,
                defaultCall: __defaultImplStub!.encode(with: aCoder))
        
    }
    

	 struct __StubbingProxy_BodyData: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var date: Cuckoo.ClassToBeStubbedProperty<MockBodyData, String> {
	        return .init(manager: cuckoo_manager, name: "date")
	    }
	    
	    var stature: Cuckoo.ClassToBeStubbedProperty<MockBodyData, String> {
	        return .init(manager: cuckoo_manager, name: "stature")
	    }
	    
	    var weight: Cuckoo.ClassToBeStubbedProperty<MockBodyData, String> {
	        return .init(manager: cuckoo_manager, name: "weight")
	    }
	    
	    var message: Cuckoo.ClassToBeStubbedProperty<MockBodyData, String?> {
	        return .init(manager: cuckoo_manager, name: "message")
	    }
	    
	    
	    func encode<M1: Cuckoo.Matchable>(with aCoder: M1) -> Cuckoo.ClassStubNoReturnFunction<(NSCoder)> where M1.MatchedType == NSCoder {
	        let matchers: [Cuckoo.ParameterMatcher<(NSCoder)>] = [wrap(matchable: aCoder) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockBodyData.self, method: "encode(with: NSCoder)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_BodyData: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var date: Cuckoo.VerifyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "date", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var stature: Cuckoo.VerifyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "stature", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var weight: Cuckoo.VerifyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "weight", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var message: Cuckoo.VerifyProperty<String?> {
	        return .init(manager: cuckoo_manager, name: "message", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func encode<M1: Cuckoo.Matchable>(with aCoder: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == NSCoder {
	        let matchers: [Cuckoo.ParameterMatcher<(NSCoder)>] = [wrap(matchable: aCoder) { $0 }]
	        return cuckoo_manager.verify("encode(with: NSCoder)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class BodyDataStub: BodyData {
    
     override var date: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
        set { }
        
    }
    
     override var stature: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
        set { }
        
    }
    
     override var weight: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
        set { }
        
    }
    
     override var message: String? {
        get {
            return DefaultValueRegistry.defaultValue(for: (String?).self)
        }
        
        set { }
        
    }
    

    

    
     override func encode(with aCoder: NSCoder)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: calculateBMI/BodyDataHistory.swift at 2019-04-26 03:01:13 +0000

//
//  BodyDataHistory.swift
//  calculateBMI
//
//  Created by cries on 2019/03/04.
//  Copyright © 2019年 cries. All rights reserved.

import Cuckoo
@testable import calculateBMI

import Foundation


 class MockBodyDataHistory: BodyDataHistory, Cuckoo.ClassMock {
     typealias MocksType = BodyDataHistory
     typealias Stubbing = __StubbingProxy_BodyDataHistory
     typealias Verification = __VerificationProxy_BodyDataHistory

    private var __defaultImplStub: BodyDataHistory?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

     func enableDefaultImplementation(_ stub: BodyDataHistory) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     override func saveData(_ data: BodyData)  {
        
            return cuckoo_manager.call("saveData(_: BodyData)",
                parameters: (data),
                escapingParameters: (data),
                superclassCall:
                    
                    super.saveData(data)
                    ,
                defaultCall: __defaultImplStub!.saveData(data))
        
    }
    
    
    
     override func removeData(date: String)  {
        
            return cuckoo_manager.call("removeData(date: String)",
                parameters: (date),
                escapingParameters: (date),
                superclassCall:
                    
                    super.removeData(date: date)
                    ,
                defaultCall: __defaultImplStub!.removeData(date: date))
        
    }
    
    
    
     override func getHistoryData()  -> Array<HistoryData> {
        
            return cuckoo_manager.call("getHistoryData() -> Array<HistoryData>",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.getHistoryData()
                    ,
                defaultCall: __defaultImplStub!.getHistoryData())
        
    }
    

	 struct __StubbingProxy_BodyDataHistory: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func saveData<M1: Cuckoo.Matchable>(_ data: M1) -> Cuckoo.ClassStubNoReturnFunction<(BodyData)> where M1.MatchedType == BodyData {
	        let matchers: [Cuckoo.ParameterMatcher<(BodyData)>] = [wrap(matchable: data) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockBodyDataHistory.self, method: "saveData(_: BodyData)", parameterMatchers: matchers))
	    }
	    
	    func removeData<M1: Cuckoo.Matchable>(date: M1) -> Cuckoo.ClassStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: date) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockBodyDataHistory.self, method: "removeData(date: String)", parameterMatchers: matchers))
	    }
	    
	    func getHistoryData() -> Cuckoo.ClassStubFunction<(), Array<HistoryData>> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockBodyDataHistory.self, method: "getHistoryData() -> Array<HistoryData>", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_BodyDataHistory: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func saveData<M1: Cuckoo.Matchable>(_ data: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == BodyData {
	        let matchers: [Cuckoo.ParameterMatcher<(BodyData)>] = [wrap(matchable: data) { $0 }]
	        return cuckoo_manager.verify("saveData(_: BodyData)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func removeData<M1: Cuckoo.Matchable>(date: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: date) { $0 }]
	        return cuckoo_manager.verify("removeData(date: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getHistoryData() -> Cuckoo.__DoNotUse<Array<HistoryData>> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getHistoryData() -> Array<HistoryData>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class BodyDataHistoryStub: BodyDataHistory {
    

    

    
     override func saveData(_ data: BodyData)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func removeData(date: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func getHistoryData()  -> Array<HistoryData> {
        return DefaultValueRegistry.defaultValue(for: Array<HistoryData>.self)
    }
    
}


// MARK: - Mocks generated from file: calculateBMI/BodyMassIndex.swift at 2019-04-26 03:01:13 +0000

//
//  BodyMassIndex.swift
//  calculateBMI
//
//  Created by cries on 2019/03/01.
//  Copyright © 2019年 cries. All rights reserved.

import Cuckoo
@testable import calculateBMI

import Foundation


 class MockBodyMassIndex: BodyMassIndex, Cuckoo.ClassMock {
     typealias MocksType = BodyMassIndex
     typealias Stubbing = __StubbingProxy_BodyMassIndex
     typealias Verification = __VerificationProxy_BodyMassIndex

    private var __defaultImplStub: BodyMassIndex?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

     func enableDefaultImplementation(_ stub: BodyMassIndex) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    
    
     override func calculation()  -> Double? {
        
            return cuckoo_manager.call("calculation() -> Double?",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.calculation()
                    ,
                defaultCall: __defaultImplStub!.calculation())
        
    }
    

	 struct __StubbingProxy_BodyMassIndex: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func calculation() -> Cuckoo.ClassStubFunction<(), Optional<Double>> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockBodyMassIndex.self, method: "calculation() -> Double?", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_BodyMassIndex: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func calculation() -> Cuckoo.__DoNotUse<Optional<Double>> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("calculation() -> Double?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class BodyMassIndexStub: BodyMassIndex {
    

    

    
     override func calculation()  -> Double? {
        return DefaultValueRegistry.defaultValue(for: Optional<Double>.self)
    }
    
}


// MARK: - Mocks generated from file: calculateBMI/PlaceHolderedTextView.swift at 2019-04-26 03:01:13 +0000

//
//  PlaceHolderedTextView.swift
//  calculateBMI
//
//  Created by cries on 2019/03/01.
//  Copyright © 2019年 cries. All rights reserved.

import Cuckoo
@testable import calculateBMI

import UIKit


 class MockPlaceHolderedTextView: PlaceHolderedTextView, Cuckoo.ClassMock {
     typealias MocksType = PlaceHolderedTextView
     typealias Stubbing = __StubbingProxy_PlaceHolderedTextView
     typealias Verification = __VerificationProxy_PlaceHolderedTextView

    private var __defaultImplStub: PlaceHolderedTextView?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

     func enableDefaultImplementation(_ stub: PlaceHolderedTextView) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
    
     override var placeHolder: String {
        get {
            return cuckoo_manager.getter("placeHolder",
                superclassCall:
                    
                    super.placeHolder
                    ,
                defaultCall: __defaultImplStub!.placeHolder)
        }
        
        set {
            cuckoo_manager.setter("placeHolder",
                value: newValue,
                superclassCall:
                    
                    super.placeHolder = newValue
                    ,
                defaultCall: __defaultImplStub!.placeHolder = newValue)
        }
        
    }
    
    
    
     override var placeHolderColor: UIColor {
        get {
            return cuckoo_manager.getter("placeHolderColor",
                superclassCall:
                    
                    super.placeHolderColor
                    ,
                defaultCall: __defaultImplStub!.placeHolderColor)
        }
        
        set {
            cuckoo_manager.setter("placeHolderColor",
                value: newValue,
                superclassCall:
                    
                    super.placeHolderColor = newValue
                    ,
                defaultCall: __defaultImplStub!.placeHolderColor = newValue)
        }
        
    }
    

    

    
    
    
     override func onChangedText(_ notification: NSNotification?)  {
        
            return cuckoo_manager.call("onChangedText(_: NSNotification?)",
                parameters: (notification),
                escapingParameters: (notification),
                superclassCall:
                    
                    super.onChangedText(notification)
                    ,
                defaultCall: __defaultImplStub!.onChangedText(notification))
        
    }
    

	 struct __StubbingProxy_PlaceHolderedTextView: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var placeHolder: Cuckoo.ClassToBeStubbedProperty<MockPlaceHolderedTextView, String> {
	        return .init(manager: cuckoo_manager, name: "placeHolder")
	    }
	    
	    var placeHolderColor: Cuckoo.ClassToBeStubbedProperty<MockPlaceHolderedTextView, UIColor> {
	        return .init(manager: cuckoo_manager, name: "placeHolderColor")
	    }
	    
	    
	    func onChangedText<M1: Cuckoo.Matchable>(_ notification: M1) -> Cuckoo.ClassStubNoReturnFunction<(NSNotification?)> where M1.MatchedType == NSNotification? {
	        let matchers: [Cuckoo.ParameterMatcher<(NSNotification?)>] = [wrap(matchable: notification) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPlaceHolderedTextView.self, method: "onChangedText(_: NSNotification?)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PlaceHolderedTextView: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var placeHolder: Cuckoo.VerifyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "placeHolder", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var placeHolderColor: Cuckoo.VerifyProperty<UIColor> {
	        return .init(manager: cuckoo_manager, name: "placeHolderColor", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func onChangedText<M1: Cuckoo.Matchable>(_ notification: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == NSNotification? {
	        let matchers: [Cuckoo.ParameterMatcher<(NSNotification?)>] = [wrap(matchable: notification) { $0 }]
	        return cuckoo_manager.verify("onChangedText(_: NSNotification?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class PlaceHolderedTextViewStub: PlaceHolderedTextView {
    
     override var placeHolder: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
        set { }
        
    }
    
     override var placeHolderColor: UIColor {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIColor).self)
        }
        
        set { }
        
    }
    

    

    
     override func onChangedText(_ notification: NSNotification?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: calculateBMI/ViewController/HistoryViewController.swift at 2019-04-26 03:01:13 +0000

//
//  HistoryViewController.swift
//  calculateBMI
//
//  Created by cries on 2019/03/04.
//  Copyright © 2019年 cries. All rights reserved.

import Cuckoo
@testable import calculateBMI

import Foundation
import UIKit


 class MockHistoryViewController: HistoryViewController, Cuckoo.ClassMock {
     typealias MocksType = HistoryViewController
     typealias Stubbing = __StubbingProxy_HistoryViewController
     typealias Verification = __VerificationProxy_HistoryViewController

    private var __defaultImplStub: HistoryViewController?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

     func enableDefaultImplementation(_ stub: HistoryViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
    
     override var tableView: UITableView! {
        get {
            return cuckoo_manager.getter("tableView",
                superclassCall:
                    
                    super.tableView
                    ,
                defaultCall: __defaultImplStub!.tableView)
        }
        
        set {
            cuckoo_manager.setter("tableView",
                value: newValue,
                superclassCall:
                    
                    super.tableView = newValue
                    ,
                defaultCall: __defaultImplStub!.tableView = newValue)
        }
        
    }
    
    
    
     override var historyData: Array<BodyDataHistory.HistoryData> {
        get {
            return cuckoo_manager.getter("historyData",
                superclassCall:
                    
                    super.historyData
                    ,
                defaultCall: __defaultImplStub!.historyData)
        }
        
        set {
            cuckoo_manager.setter("historyData",
                value: newValue,
                superclassCall:
                    
                    super.historyData = newValue
                    ,
                defaultCall: __defaultImplStub!.historyData = newValue)
        }
        
    }
    

    

    
    
    
     override func viewDidLoad()  {
        
            return cuckoo_manager.call("viewDidLoad()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.viewDidLoad()
                    ,
                defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    
    
    
     override func viewWillAppear(_ animated: Bool)  {
        
            return cuckoo_manager.call("viewWillAppear(_: Bool)",
                parameters: (animated),
                escapingParameters: (animated),
                superclassCall:
                    
                    super.viewWillAppear(animated)
                    ,
                defaultCall: __defaultImplStub!.viewWillAppear(animated))
        
    }
    

	 struct __StubbingProxy_HistoryViewController: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var tableView: Cuckoo.ClassToBeStubbedProperty<MockHistoryViewController, UITableView?> {
	        return .init(manager: cuckoo_manager, name: "tableView")
	    }
	    
	    var historyData: Cuckoo.ClassToBeStubbedProperty<MockHistoryViewController, Array<BodyDataHistory.HistoryData>> {
	        return .init(manager: cuckoo_manager, name: "historyData")
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockHistoryViewController.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func viewWillAppear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.ClassStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHistoryViewController.self, method: "viewWillAppear(_: Bool)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_HistoryViewController: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var tableView: Cuckoo.VerifyProperty<UITableView?> {
	        return .init(manager: cuckoo_manager, name: "tableView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var historyData: Cuckoo.VerifyProperty<Array<BodyDataHistory.HistoryData>> {
	        return .init(manager: cuckoo_manager, name: "historyData", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewWillAppear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
	        return cuckoo_manager.verify("viewWillAppear(_: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class HistoryViewControllerStub: HistoryViewController {
    
     override var tableView: UITableView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UITableView?).self)
        }
        
        set { }
        
    }
    
     override var historyData: Array<BodyDataHistory.HistoryData> {
        get {
            return DefaultValueRegistry.defaultValue(for: (Array<BodyDataHistory.HistoryData>).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func viewWillAppear(_ animated: Bool)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: calculateBMI/ViewController/InputViewController.swift at 2019-04-26 03:01:13 +0000

//
//  InputViewController.swift
//  calculateBMI
//
//  Created by cries on 2019/03/01.
//  Copyright © 2019年 cries. All rights reserved.

import Cuckoo
@testable import calculateBMI

import Foundation
import UIKit


 class MockInputViewController: InputViewController, Cuckoo.ClassMock {
     typealias MocksType = InputViewController
     typealias Stubbing = __StubbingProxy_InputViewController
     typealias Verification = __VerificationProxy_InputViewController

    private var __defaultImplStub: InputViewController?

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

     func enableDefaultImplementation(_ stub: InputViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
    
     override var statureInput: UITextField! {
        get {
            return cuckoo_manager.getter("statureInput",
                superclassCall:
                    
                    super.statureInput
                    ,
                defaultCall: __defaultImplStub!.statureInput)
        }
        
        set {
            cuckoo_manager.setter("statureInput",
                value: newValue,
                superclassCall:
                    
                    super.statureInput = newValue
                    ,
                defaultCall: __defaultImplStub!.statureInput = newValue)
        }
        
    }
    
    
    
     override var weightInput: UITextField! {
        get {
            return cuckoo_manager.getter("weightInput",
                superclassCall:
                    
                    super.weightInput
                    ,
                defaultCall: __defaultImplStub!.weightInput)
        }
        
        set {
            cuckoo_manager.setter("weightInput",
                value: newValue,
                superclassCall:
                    
                    super.weightInput = newValue
                    ,
                defaultCall: __defaultImplStub!.weightInput = newValue)
        }
        
    }
    
    
    
     override var messageLabel1: UILabel! {
        get {
            return cuckoo_manager.getter("messageLabel1",
                superclassCall:
                    
                    super.messageLabel1
                    ,
                defaultCall: __defaultImplStub!.messageLabel1)
        }
        
        set {
            cuckoo_manager.setter("messageLabel1",
                value: newValue,
                superclassCall:
                    
                    super.messageLabel1 = newValue
                    ,
                defaultCall: __defaultImplStub!.messageLabel1 = newValue)
        }
        
    }
    
    
    
     override var valueLabel: UILabel! {
        get {
            return cuckoo_manager.getter("valueLabel",
                superclassCall:
                    
                    super.valueLabel
                    ,
                defaultCall: __defaultImplStub!.valueLabel)
        }
        
        set {
            cuckoo_manager.setter("valueLabel",
                value: newValue,
                superclassCall:
                    
                    super.valueLabel = newValue
                    ,
                defaultCall: __defaultImplStub!.valueLabel = newValue)
        }
        
    }
    
    
    
     override var messageLabel2: UILabel! {
        get {
            return cuckoo_manager.getter("messageLabel2",
                superclassCall:
                    
                    super.messageLabel2
                    ,
                defaultCall: __defaultImplStub!.messageLabel2)
        }
        
        set {
            cuckoo_manager.setter("messageLabel2",
                value: newValue,
                superclassCall:
                    
                    super.messageLabel2 = newValue
                    ,
                defaultCall: __defaultImplStub!.messageLabel2 = newValue)
        }
        
    }
    
    
    
     override var memoInput: PlaceHolderedTextView! {
        get {
            return cuckoo_manager.getter("memoInput",
                superclassCall:
                    
                    super.memoInput
                    ,
                defaultCall: __defaultImplStub!.memoInput)
        }
        
        set {
            cuckoo_manager.setter("memoInput",
                value: newValue,
                superclassCall:
                    
                    super.memoInput = newValue
                    ,
                defaultCall: __defaultImplStub!.memoInput = newValue)
        }
        
    }
    
    
    
     override var calculation: UIButton! {
        get {
            return cuckoo_manager.getter("calculation",
                superclassCall:
                    
                    super.calculation
                    ,
                defaultCall: __defaultImplStub!.calculation)
        }
        
        set {
            cuckoo_manager.setter("calculation",
                value: newValue,
                superclassCall:
                    
                    super.calculation = newValue
                    ,
                defaultCall: __defaultImplStub!.calculation = newValue)
        }
        
    }
    
    
    
     override var dataSave: UIButton! {
        get {
            return cuckoo_manager.getter("dataSave",
                superclassCall:
                    
                    super.dataSave
                    ,
                defaultCall: __defaultImplStub!.dataSave)
        }
        
        set {
            cuckoo_manager.setter("dataSave",
                value: newValue,
                superclassCall:
                    
                    super.dataSave = newValue
                    ,
                defaultCall: __defaultImplStub!.dataSave = newValue)
        }
        
    }
    
    
    
     override var dataDelete: UIButton! {
        get {
            return cuckoo_manager.getter("dataDelete",
                superclassCall:
                    
                    super.dataDelete
                    ,
                defaultCall: __defaultImplStub!.dataDelete)
        }
        
        set {
            cuckoo_manager.setter("dataDelete",
                value: newValue,
                superclassCall:
                    
                    super.dataDelete = newValue
                    ,
                defaultCall: __defaultImplStub!.dataDelete = newValue)
        }
        
    }
    
    
    
     override var scrollView: UIScrollView! {
        get {
            return cuckoo_manager.getter("scrollView",
                superclassCall:
                    
                    super.scrollView
                    ,
                defaultCall: __defaultImplStub!.scrollView)
        }
        
        set {
            cuckoo_manager.setter("scrollView",
                value: newValue,
                superclassCall:
                    
                    super.scrollView = newValue
                    ,
                defaultCall: __defaultImplStub!.scrollView = newValue)
        }
        
    }
    
    
    
     override var activeField: UIView? {
        get {
            return cuckoo_manager.getter("activeField",
                superclassCall:
                    
                    super.activeField
                    ,
                defaultCall: __defaultImplStub!.activeField)
        }
        
        set {
            cuckoo_manager.setter("activeField",
                value: newValue,
                superclassCall:
                    
                    super.activeField = newValue
                    ,
                defaultCall: __defaultImplStub!.activeField = newValue)
        }
        
    }
    

    

    
    
    
     override func viewDidLoad()  {
        
            return cuckoo_manager.call("viewDidLoad()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.viewDidLoad()
                    ,
                defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    
    
    
     override func viewWillAppear(_ animated: Bool)  {
        
            return cuckoo_manager.call("viewWillAppear(_: Bool)",
                parameters: (animated),
                escapingParameters: (animated),
                superclassCall:
                    
                    super.viewWillAppear(animated)
                    ,
                defaultCall: __defaultImplStub!.viewWillAppear(animated))
        
    }
    
    
    
     override func viewWillDisappear(_ animated: Bool)  {
        
            return cuckoo_manager.call("viewWillDisappear(_: Bool)",
                parameters: (animated),
                escapingParameters: (animated),
                superclassCall:
                    
                    super.viewWillDisappear(animated)
                    ,
                defaultCall: __defaultImplStub!.viewWillDisappear(animated))
        
    }
    
    
    
     override func validate()  -> (stature: Double, weight: Double)? {
        
            return cuckoo_manager.call("validate() -> (stature: Double, weight: Double)?",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.validate()
                    ,
                defaultCall: __defaultImplStub!.validate())
        
    }
    
    
    
     override func showAlert(_ text: String, action: Array<UIAlertAction>?)  {
        
            return cuckoo_manager.call("showAlert(_: String, action: Array<UIAlertAction>?)",
                parameters: (text, action),
                escapingParameters: (text, action),
                superclassCall:
                    
                    super.showAlert(text, action: action)
                    ,
                defaultCall: __defaultImplStub!.showAlert(text, action: action))
        
    }
    
    
    
     override func calculation(_ sender: Any)  {
        
            return cuckoo_manager.call("calculation(_: Any)",
                parameters: (sender),
                escapingParameters: (sender),
                superclassCall:
                    
                    super.calculation(sender)
                    ,
                defaultCall: __defaultImplStub!.calculation(sender))
        
    }
    
    
    
     override func dataSave(_ sender: Any)  {
        
            return cuckoo_manager.call("dataSave(_: Any)",
                parameters: (sender),
                escapingParameters: (sender),
                superclassCall:
                    
                    super.dataSave(sender)
                    ,
                defaultCall: __defaultImplStub!.dataSave(sender))
        
    }
    
    
    
     override func dataDelete(_ sender: Any)  {
        
            return cuckoo_manager.call("dataDelete(_: Any)",
                parameters: (sender),
                escapingParameters: (sender),
                superclassCall:
                    
                    super.dataDelete(sender)
                    ,
                defaultCall: __defaultImplStub!.dataDelete(sender))
        
    }
    
    
    
     override func keyboardWillBeShown(notification: NSNotification)  {
        
            return cuckoo_manager.call("keyboardWillBeShown(notification: NSNotification)",
                parameters: (notification),
                escapingParameters: (notification),
                superclassCall:
                    
                    super.keyboardWillBeShown(notification: notification)
                    ,
                defaultCall: __defaultImplStub!.keyboardWillBeShown(notification: notification))
        
    }
    
    
    
     override func keyboardWillBeHidden(notification: NSNotification)  {
        
            return cuckoo_manager.call("keyboardWillBeHidden(notification: NSNotification)",
                parameters: (notification),
                escapingParameters: (notification),
                superclassCall:
                    
                    super.keyboardWillBeHidden(notification: notification)
                    ,
                defaultCall: __defaultImplStub!.keyboardWillBeHidden(notification: notification))
        
    }
    
    
    
     override func updateScrollViewSize(moveSize: CGFloat, duration: TimeInterval)  {
        
            return cuckoo_manager.call("updateScrollViewSize(moveSize: CGFloat, duration: TimeInterval)",
                parameters: (moveSize, duration),
                escapingParameters: (moveSize, duration),
                superclassCall:
                    
                    super.updateScrollViewSize(moveSize: moveSize, duration: duration)
                    ,
                defaultCall: __defaultImplStub!.updateScrollViewSize(moveSize: moveSize, duration: duration))
        
    }
    
    
    
     override func restoreScrollViewSize()  {
        
            return cuckoo_manager.call("restoreScrollViewSize()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.restoreScrollViewSize()
                    ,
                defaultCall: __defaultImplStub!.restoreScrollViewSize())
        
    }
    
    
    
     override func getOffsetY(keyboardFrame: CGRect)  -> CGFloat? {
        
            return cuckoo_manager.call("getOffsetY(keyboardFrame: CGRect) -> CGFloat?",
                parameters: (keyboardFrame),
                escapingParameters: (keyboardFrame),
                superclassCall:
                    
                    super.getOffsetY(keyboardFrame: keyboardFrame)
                    ,
                defaultCall: __defaultImplStub!.getOffsetY(keyboardFrame: keyboardFrame))
        
    }
    
    
    
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)  {
        
            return cuckoo_manager.call("touchesBegan(_: Set<UITouch>, with: UIEvent?)",
                parameters: (touches, event),
                escapingParameters: (touches, event),
                superclassCall:
                    
                    super.touchesBegan(touches, with: event)
                    ,
                defaultCall: __defaultImplStub!.touchesBegan(touches, with: event))
        
    }
    
    
    
     override func keybordClose()  {
        
            return cuckoo_manager.call("keybordClose()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.keybordClose()
                    ,
                defaultCall: __defaultImplStub!.keybordClose())
        
    }
    

	 struct __StubbingProxy_InputViewController: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var statureInput: Cuckoo.ClassToBeStubbedProperty<MockInputViewController, UITextField?> {
	        return .init(manager: cuckoo_manager, name: "statureInput")
	    }
	    
	    var weightInput: Cuckoo.ClassToBeStubbedProperty<MockInputViewController, UITextField?> {
	        return .init(manager: cuckoo_manager, name: "weightInput")
	    }
	    
	    var messageLabel1: Cuckoo.ClassToBeStubbedProperty<MockInputViewController, UILabel?> {
	        return .init(manager: cuckoo_manager, name: "messageLabel1")
	    }
	    
	    var valueLabel: Cuckoo.ClassToBeStubbedProperty<MockInputViewController, UILabel?> {
	        return .init(manager: cuckoo_manager, name: "valueLabel")
	    }
	    
	    var messageLabel2: Cuckoo.ClassToBeStubbedProperty<MockInputViewController, UILabel?> {
	        return .init(manager: cuckoo_manager, name: "messageLabel2")
	    }
	    
	    var memoInput: Cuckoo.ClassToBeStubbedProperty<MockInputViewController, PlaceHolderedTextView?> {
	        return .init(manager: cuckoo_manager, name: "memoInput")
	    }
	    
	    var calculation: Cuckoo.ClassToBeStubbedProperty<MockInputViewController, UIButton?> {
	        return .init(manager: cuckoo_manager, name: "calculation")
	    }
	    
	    var dataSave: Cuckoo.ClassToBeStubbedProperty<MockInputViewController, UIButton?> {
	        return .init(manager: cuckoo_manager, name: "dataSave")
	    }
	    
	    var dataDelete: Cuckoo.ClassToBeStubbedProperty<MockInputViewController, UIButton?> {
	        return .init(manager: cuckoo_manager, name: "dataDelete")
	    }
	    
	    var scrollView: Cuckoo.ClassToBeStubbedProperty<MockInputViewController, UIScrollView?> {
	        return .init(manager: cuckoo_manager, name: "scrollView")
	    }
	    
	    var activeField: Cuckoo.ClassToBeStubbedProperty<MockInputViewController, UIView?> {
	        return .init(manager: cuckoo_manager, name: "activeField")
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func viewWillAppear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.ClassStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "viewWillAppear(_: Bool)", parameterMatchers: matchers))
	    }
	    
	    func viewWillDisappear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.ClassStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "viewWillDisappear(_: Bool)", parameterMatchers: matchers))
	    }
	    
	    func validate() -> Cuckoo.ClassStubFunction<(), Optional<(stature: Double, weight: Double)>> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "validate() -> (stature: Double, weight: Double)?", parameterMatchers: matchers))
	    }
	    
	    func showAlert<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ text: M1, action: M2) -> Cuckoo.ClassStubNoReturnFunction<(String, Array<UIAlertAction>?)> where M1.MatchedType == String, M2.MatchedType == Array<UIAlertAction>? {
	        let matchers: [Cuckoo.ParameterMatcher<(String, Array<UIAlertAction>?)>] = [wrap(matchable: text) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "showAlert(_: String, action: Array<UIAlertAction>?)", parameterMatchers: matchers))
	    }
	    
	    func calculation<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.ClassStubNoReturnFunction<(Any)> where M1.MatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(Any)>] = [wrap(matchable: sender) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "calculation(_: Any)", parameterMatchers: matchers))
	    }
	    
	    func dataSave<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.ClassStubNoReturnFunction<(Any)> where M1.MatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(Any)>] = [wrap(matchable: sender) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "dataSave(_: Any)", parameterMatchers: matchers))
	    }
	    
	    func dataDelete<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.ClassStubNoReturnFunction<(Any)> where M1.MatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(Any)>] = [wrap(matchable: sender) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "dataDelete(_: Any)", parameterMatchers: matchers))
	    }
	    
	    func keyboardWillBeShown<M1: Cuckoo.Matchable>(notification: M1) -> Cuckoo.ClassStubNoReturnFunction<(NSNotification)> where M1.MatchedType == NSNotification {
	        let matchers: [Cuckoo.ParameterMatcher<(NSNotification)>] = [wrap(matchable: notification) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "keyboardWillBeShown(notification: NSNotification)", parameterMatchers: matchers))
	    }
	    
	    func keyboardWillBeHidden<M1: Cuckoo.Matchable>(notification: M1) -> Cuckoo.ClassStubNoReturnFunction<(NSNotification)> where M1.MatchedType == NSNotification {
	        let matchers: [Cuckoo.ParameterMatcher<(NSNotification)>] = [wrap(matchable: notification) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "keyboardWillBeHidden(notification: NSNotification)", parameterMatchers: matchers))
	    }
	    
	    func updateScrollViewSize<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(moveSize: M1, duration: M2) -> Cuckoo.ClassStubNoReturnFunction<(CGFloat, TimeInterval)> where M1.MatchedType == CGFloat, M2.MatchedType == TimeInterval {
	        let matchers: [Cuckoo.ParameterMatcher<(CGFloat, TimeInterval)>] = [wrap(matchable: moveSize) { $0.0 }, wrap(matchable: duration) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "updateScrollViewSize(moveSize: CGFloat, duration: TimeInterval)", parameterMatchers: matchers))
	    }
	    
	    func restoreScrollViewSize() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "restoreScrollViewSize()", parameterMatchers: matchers))
	    }
	    
	    func getOffsetY<M1: Cuckoo.Matchable>(keyboardFrame: M1) -> Cuckoo.ClassStubFunction<(CGRect), Optional<CGFloat>> where M1.MatchedType == CGRect {
	        let matchers: [Cuckoo.ParameterMatcher<(CGRect)>] = [wrap(matchable: keyboardFrame) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "getOffsetY(keyboardFrame: CGRect) -> CGFloat?", parameterMatchers: matchers))
	    }
	    
	    func touchesBegan<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ touches: M1, with event: M2) -> Cuckoo.ClassStubNoReturnFunction<(Set<UITouch>, UIEvent?)> where M1.MatchedType == Set<UITouch>, M2.MatchedType == UIEvent? {
	        let matchers: [Cuckoo.ParameterMatcher<(Set<UITouch>, UIEvent?)>] = [wrap(matchable: touches) { $0.0 }, wrap(matchable: event) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "touchesBegan(_: Set<UITouch>, with: UIEvent?)", parameterMatchers: matchers))
	    }
	    
	    func keybordClose() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockInputViewController.self, method: "keybordClose()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_InputViewController: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var statureInput: Cuckoo.VerifyProperty<UITextField?> {
	        return .init(manager: cuckoo_manager, name: "statureInput", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var weightInput: Cuckoo.VerifyProperty<UITextField?> {
	        return .init(manager: cuckoo_manager, name: "weightInput", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var messageLabel1: Cuckoo.VerifyProperty<UILabel?> {
	        return .init(manager: cuckoo_manager, name: "messageLabel1", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var valueLabel: Cuckoo.VerifyProperty<UILabel?> {
	        return .init(manager: cuckoo_manager, name: "valueLabel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var messageLabel2: Cuckoo.VerifyProperty<UILabel?> {
	        return .init(manager: cuckoo_manager, name: "messageLabel2", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var memoInput: Cuckoo.VerifyProperty<PlaceHolderedTextView?> {
	        return .init(manager: cuckoo_manager, name: "memoInput", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var calculation: Cuckoo.VerifyProperty<UIButton?> {
	        return .init(manager: cuckoo_manager, name: "calculation", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var dataSave: Cuckoo.VerifyProperty<UIButton?> {
	        return .init(manager: cuckoo_manager, name: "dataSave", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var dataDelete: Cuckoo.VerifyProperty<UIButton?> {
	        return .init(manager: cuckoo_manager, name: "dataDelete", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var scrollView: Cuckoo.VerifyProperty<UIScrollView?> {
	        return .init(manager: cuckoo_manager, name: "scrollView", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var activeField: Cuckoo.VerifyProperty<UIView?> {
	        return .init(manager: cuckoo_manager, name: "activeField", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewWillAppear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
	        return cuckoo_manager.verify("viewWillAppear(_: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewWillDisappear<M1: Cuckoo.Matchable>(_ animated: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: animated) { $0 }]
	        return cuckoo_manager.verify("viewWillDisappear(_: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func validate() -> Cuckoo.__DoNotUse<Optional<(stature: Double, weight: Double)>> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("validate() -> (stature: Double, weight: Double)?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showAlert<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ text: M1, action: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == Array<UIAlertAction>? {
	        let matchers: [Cuckoo.ParameterMatcher<(String, Array<UIAlertAction>?)>] = [wrap(matchable: text) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return cuckoo_manager.verify("showAlert(_: String, action: Array<UIAlertAction>?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func calculation<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(Any)>] = [wrap(matchable: sender) { $0 }]
	        return cuckoo_manager.verify("calculation(_: Any)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func dataSave<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(Any)>] = [wrap(matchable: sender) { $0 }]
	        return cuckoo_manager.verify("dataSave(_: Any)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func dataDelete<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(Any)>] = [wrap(matchable: sender) { $0 }]
	        return cuckoo_manager.verify("dataDelete(_: Any)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func keyboardWillBeShown<M1: Cuckoo.Matchable>(notification: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == NSNotification {
	        let matchers: [Cuckoo.ParameterMatcher<(NSNotification)>] = [wrap(matchable: notification) { $0 }]
	        return cuckoo_manager.verify("keyboardWillBeShown(notification: NSNotification)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func keyboardWillBeHidden<M1: Cuckoo.Matchable>(notification: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == NSNotification {
	        let matchers: [Cuckoo.ParameterMatcher<(NSNotification)>] = [wrap(matchable: notification) { $0 }]
	        return cuckoo_manager.verify("keyboardWillBeHidden(notification: NSNotification)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func updateScrollViewSize<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(moveSize: M1, duration: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == CGFloat, M2.MatchedType == TimeInterval {
	        let matchers: [Cuckoo.ParameterMatcher<(CGFloat, TimeInterval)>] = [wrap(matchable: moveSize) { $0.0 }, wrap(matchable: duration) { $0.1 }]
	        return cuckoo_manager.verify("updateScrollViewSize(moveSize: CGFloat, duration: TimeInterval)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func restoreScrollViewSize() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("restoreScrollViewSize()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getOffsetY<M1: Cuckoo.Matchable>(keyboardFrame: M1) -> Cuckoo.__DoNotUse<Optional<CGFloat>> where M1.MatchedType == CGRect {
	        let matchers: [Cuckoo.ParameterMatcher<(CGRect)>] = [wrap(matchable: keyboardFrame) { $0 }]
	        return cuckoo_manager.verify("getOffsetY(keyboardFrame: CGRect) -> CGFloat?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func touchesBegan<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ touches: M1, with event: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Set<UITouch>, M2.MatchedType == UIEvent? {
	        let matchers: [Cuckoo.ParameterMatcher<(Set<UITouch>, UIEvent?)>] = [wrap(matchable: touches) { $0.0 }, wrap(matchable: event) { $0.1 }]
	        return cuckoo_manager.verify("touchesBegan(_: Set<UITouch>, with: UIEvent?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func keybordClose() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("keybordClose()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class InputViewControllerStub: InputViewController {
    
     override var statureInput: UITextField! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UITextField?).self)
        }
        
        set { }
        
    }
    
     override var weightInput: UITextField! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UITextField?).self)
        }
        
        set { }
        
    }
    
     override var messageLabel1: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel?).self)
        }
        
        set { }
        
    }
    
     override var valueLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel?).self)
        }
        
        set { }
        
    }
    
     override var messageLabel2: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel?).self)
        }
        
        set { }
        
    }
    
     override var memoInput: PlaceHolderedTextView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (PlaceHolderedTextView?).self)
        }
        
        set { }
        
    }
    
     override var calculation: UIButton! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIButton?).self)
        }
        
        set { }
        
    }
    
     override var dataSave: UIButton! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIButton?).self)
        }
        
        set { }
        
    }
    
     override var dataDelete: UIButton! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIButton?).self)
        }
        
        set { }
        
    }
    
     override var scrollView: UIScrollView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIScrollView?).self)
        }
        
        set { }
        
    }
    
     override var activeField: UIView? {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView?).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func viewWillAppear(_ animated: Bool)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func viewWillDisappear(_ animated: Bool)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func validate()  -> (stature: Double, weight: Double)? {
        return DefaultValueRegistry.defaultValue(for: Optional<(stature: Double, weight: Double)>.self)
    }
    
     override func showAlert(_ text: String, action: Array<UIAlertAction>?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func calculation(_ sender: Any)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func dataSave(_ sender: Any)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func dataDelete(_ sender: Any)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func keyboardWillBeShown(notification: NSNotification)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func keyboardWillBeHidden(notification: NSNotification)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func updateScrollViewSize(moveSize: CGFloat, duration: TimeInterval)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func restoreScrollViewSize()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func getOffsetY(keyboardFrame: CGRect)  -> CGFloat? {
        return DefaultValueRegistry.defaultValue(for: Optional<CGFloat>.self)
    }
    
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func keybordClose()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

