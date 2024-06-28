//
//  MainTabbarRouter.swift
//  andon
//
//  Created by Ricky Silitonga on 28/06/24.
//

import UIKit


class MainTabbarRouter {
    func showView() -> MainTabbarView {
        let storyboardID = String(describing: MainTabbarView.self)
        let storyboard = UIStoryboard(name: storyboardID, bundle: nil)
        guard let view = storyboard.instantiateViewController(withIdentifier: storyboardID) as? MainTabbarView else {
            fatalError("Error loarding storyboard!")
        }
        let interactor = MainTabbarInteractor()
        let presenter = MainTabbarPresenter(interactor: interactor)
        view.presenter = presenter
        return view
    }
}
