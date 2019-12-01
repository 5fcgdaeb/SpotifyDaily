//
//  SettingsViewController.swift
//  SpotifyDaily
//
//  Created by Kevin Li on 11/26/19.
//  Copyright © 2019 Kevin Li. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

final class SettingsViewController: ViewControllerWithSideMenu {
    
    //MARK: Properties
    private let disposeBag = DisposeBag()
    var viewModel: SettingsViewModel?
    
    // MARK: View Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        self.viewModel?.refreshProfile()
    }
    
    //MARK: View configuration
    
    override func loadView() {
        view = SettingsRootView(viewModel: viewModel!)
    }
    
}
