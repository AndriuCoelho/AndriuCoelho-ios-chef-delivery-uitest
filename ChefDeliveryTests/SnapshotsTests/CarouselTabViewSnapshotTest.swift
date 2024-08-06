//
//  CarouselTabViewSnapshotTest.swift
//  ChefDeliveryTests
//
//  Created by Ândriu F Coelho on 06/08/24.
//

import PreviewSnapshotsTesting
import XCTest

@testable import ChefDelivery

final class CarouselTabViewSnapshotTest: XCTestCase {
    
    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws { }
    
    func testCompareSnapshot() {
        OrderTypeGridView_Previews.snapshots.assertSnapshots()
    }

}
