//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the VIP Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

extension AppInjector {
    
    struct ___VARIABLE_sceneName___Injector {
        static let shared: ___VARIABLE_sceneName___Injector = ___VARIABLE_sceneName___Injector()
        private init() {}
    }
}

extension AppInjector.___VARIABLE_sceneName___Injector: ___VARIABLE_sceneName___Factorable  {}

protocol ___VARIABLE_sceneName___Factorable: Factorable, ServicesFactorable {

    func makeInteractor(viewController: ___VARIABLE_sceneName___DisplayLogic?, dataSource: ___VARIABLE_sceneName___Model.DataSource) -> ___VARIABLE_sceneName___Interactable
    func makePresenter(_ viewController: ___VARIABLE_sceneName___DisplayLogic?) -> ___VARIABLE_sceneName___PresentationLogic
    func makeRouter(viewController: UIViewController?) -> ___VARIABLE_sceneName___Routing
}

extension ___VARIABLE_sceneName___Factorable {
    
    func makeInteractor(viewController: ___VARIABLE_sceneName___DisplayLogic?, dataSource: ___VARIABLE_sceneName___Model.DataSource) -> ___VARIABLE_sceneName___Interactable {
        ___VARIABLE_sceneName___Interactor(factory: AppInjector.___VARIABLE_sceneName___Injector.shared, viewController: viewController, dataSource: dataSource)
    }
    
    func makePresenter(_ viewController: ___VARIABLE_sceneName___DisplayLogic?) -> ___VARIABLE_sceneName___PresentationLogic {
        ___VARIABLE_sceneName___Presenter(viewController)
    }
    
    func makeRouter(viewController: UIViewController?) -> ___VARIABLE_sceneName___Routing {
        ___VARIABLE_sceneName___Router(viewController)
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
