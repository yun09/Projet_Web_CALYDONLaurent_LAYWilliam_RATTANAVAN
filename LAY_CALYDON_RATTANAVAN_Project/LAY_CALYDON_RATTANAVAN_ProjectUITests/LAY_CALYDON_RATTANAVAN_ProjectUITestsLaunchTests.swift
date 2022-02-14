//
//  LAY_CALYDON_RATTANAVAN_ProjectUITestsLaunchTests.swift
//  LAY_CALYDON_RATTANAVAN_ProjectUITests
//
//  Created by goldorak on 14/02/2022.
//

import XCTest

class LAY_CALYDON_RATTANAVAN_ProjectUITestsLaunchTests: XCTestCase {

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
