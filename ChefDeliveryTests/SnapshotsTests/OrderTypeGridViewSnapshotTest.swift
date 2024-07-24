//
//  OrderTypeGridViewSnapshotTest.swift
//  ChefDeliveryTests
//
//  Created by ALURA on 22/07/24.
//

import PreviewSnapshotsTesting
import XCTest

@testable import ChefDelivery

final class OrderTypeGridViewSnapshotTest: XCTestCase {

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws { }
    
    func testCompareSnapshot() {
        OrderTypeGridView_Previews.snapshots.assertSnapshots()
    }
}
