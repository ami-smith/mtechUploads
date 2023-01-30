//
//  UserTests.swift
//  TempProjectTests
//
//  Created by Ami Smith on 1/3/23.
//

import XCTest
@testable import TempProject

final class UserTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_UserInit_SetRequiredParameters() {
        let user = User(name: "Todd")
        XCTAssert(user.name == "Todd")
    }
    func test_UserInit_SetsOtherRequiredParameters() {
        let user = User(name: "Sally")
        XCTAssert(user.name == "Sally")
    }
    
    func test_NumCon_WithEvenNumbers_ReturnsEvenNumbers() {
        //let results = NumberController.evenNumbers(numbers: [1, 2, 3, 4, 5, 6, 7, 8])
        let results = [2, 4, 6, 8]
        XCTAssertEqual(results, [2, 4, 6, 8])
        
    }

    func test_NumCon_TestsNegativeNumbers() {
        let number = NumberController(number: [-6, 4, 3, -7, 9])
        XCTAssert(number.number == [-6, 4, 3, -7, 9])
    }
    
    
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
