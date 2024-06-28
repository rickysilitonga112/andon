//
//  MainTabbarPresenter.swift
//  andon
//
//  Created by Ricky Silitonga on 28/06/24.
//

import Foundation


class MainTabbarPresenter: BasePresenter {
    let interactor: MainTabbarInteractor
    let router = MainTabbarRouter()
    
    init(interactor: MainTabbarInteractor) {
        self.interactor = interactor
    }
}
