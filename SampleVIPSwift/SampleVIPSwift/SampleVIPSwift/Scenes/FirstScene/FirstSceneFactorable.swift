//
//  FirstSceneFactorable.swift
//  SampleVIPSwift
//
//  Created by Andrei Popilian on 10/10/2019.
//  Copyright (c) 2019 Andrei Popilian. All rights reserved.
//
//  This file was generated by the VIP Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit


typealias SceneFactorable = Factorable & ServicesFactorable

extension AppInjector {
    
    struct FirstSceneInjector {
        static let shared: FirstSceneInjector = FirstSceneInjector()
        private init() {}
    }
}

extension AppInjector.FirstSceneInjector: FirstSceneFactorable {}

protocol FirstSceneFactorable: SceneFactorable {}

extension FirstSceneFactorable {
    
    func makeInteractor(viewController: FirstSceneDisplayLogic?, dataSource: FirstSceneModel.DataSource) -> FirstSceneInteractable {
        FirstSceneInteractor(factory: AppInjector.FirstSceneInjector.shared, viewController: viewController, dataSource: dataSource)
    }
    
    func makePresenter(_ viewController: FirstSceneDisplayLogic?) -> FirstScenePresentationLogic {
        FirstScenePresenter(viewController)
    }
    
    func makeRouter(viewController: UIViewController?) -> FirstSceneRouting {
        FirstSceneRouter(viewController)
    }
}

// copy this on a separate file
protocol ServicesFactorable {
    
    //func makeXService() -> xService
}

extension ServicesFactorable {
    
//    func makeXService() -> xService {
//        xService()
//    }
}
