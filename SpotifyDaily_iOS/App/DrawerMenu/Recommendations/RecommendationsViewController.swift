//
//  RecommendationsViewController.swift
//  SpotifyDaily
//
//  Created by Kevin Li on 11/27/19.
//  Copyright © 2019 Kevin Li. All rights reserved.
//

import UIKit
import RxSwift

class RecommendationsViewController: ViewControllerWithSideMenu {
    
    private let disposeBag = DisposeBag()
    var viewModel: RecommendationsViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()
    }
    
    private func setUpView() {
        guard let viewModel = self.viewModel else { return }
        
        self.title = viewModel.title
        
    }
    
}
