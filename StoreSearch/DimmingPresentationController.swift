//
//  DimmingPresentationController.swift
//  StoreSearch
//
//  Created by vincent on 02/09/2016.
//  Copyright © 2016 infostrates. All rights reserved.
//

import UIKit

class DimmingPresentationController: UIPresentationController {
    override func shouldRemovePresentersView() -> Bool {
        return false
    }
}
