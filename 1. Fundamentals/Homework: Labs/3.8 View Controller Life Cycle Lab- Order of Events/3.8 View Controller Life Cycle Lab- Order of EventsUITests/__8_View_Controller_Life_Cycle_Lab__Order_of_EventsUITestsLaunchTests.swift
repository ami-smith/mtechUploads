//
//  __8_View_Controller_Life_Cycle_Lab__Order_of_EventsUITestsLaunchTests.swift
//  3.8 View Controller Life Cycle Lab- Order of EventsUITests
//
//  Created by Ami Smith on 9/19/22.
//

import XCTest

class __8_View_Controller_Life_Cycle_Lab__Order_of_EventsUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
