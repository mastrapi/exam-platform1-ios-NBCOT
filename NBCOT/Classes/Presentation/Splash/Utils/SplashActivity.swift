//
//  SplashActivity.swift
//  Nursing
//
//  Created by Андрей Чернышев on 05.04.2022.
//

enum SplashActivity {
    case none, sdkInitialize, library, prepareOnboarding
    
    var text: String {
        switch self {
        case .none:
            return ""
        case .sdkInitialize:
            let isFirstLaunch = NumberLaunches().isFirstLaunch()
            return isFirstLaunch ? "Splash.Preloader4".localized : "Splash.Preloader1".localized
        case .library:
            return "Splash.Preloader2".localized
        case .prepareOnboarding:
            return "Splash.Preloader3".localized
        }
    }
}
