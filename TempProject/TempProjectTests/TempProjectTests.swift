//
//  TempProjectTests.swift
//  TempProjectTests
//
//  Created by Ami Smith on 1/3/23.
//

import XCTest
@testable import TempProject

final class TempProjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func test_Person_Init_WithRequiredParams_SetsParams() {
        let person = Person(name: "George", age: 23)
        XCTAssert(person.name == "George")
        XCTAssert(person.age == 23)
        XCTAssertNil(person.height)
        XCTAssertNil(person.weight)
    }

    func test_Person_Init_WithOtherRequiredParams_SetsParams() {
        let person = Person(name: "Sally", age: 21)
        XCTAssert(person.name == "Sally")
        XCTAssert(person.age == 21)
        XCTAssertNil(person.height)
        XCTAssertNil(person.weight)
    }
    
    func test_Person_Init_WithAllParams_SetsParams() {
        let person = Person(name: "Sally", age: 21)
        XCTAssert(person.name == "Sally")
        XCTAssert(person.age == 21)
        XCTAssertNil(person.height)
        XCTAssertNil(person.weight)
    }
    
    func test_PersonUpdate_WithRequiredParams_UpdatedParams() {
        var person = Person(name: "Fred", age: 85)
        person.name = "Frank"
        XCTAssert(person.name == "Frank")
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
