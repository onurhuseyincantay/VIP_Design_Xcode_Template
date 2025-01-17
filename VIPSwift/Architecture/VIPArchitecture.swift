//
//  VIPProtocols.swift

import UIKit

protocol Interactable {
    
    associatedtype Factory: Factorable
    associatedtype DataSource: DataSourceable
    associatedtype DisplayLogic
    
    init(factory: Factory, viewController: DisplayLogic?, dataSource: DataSource)
}

protocol Presentable {
    
    associatedtype DisplayLogic
    
    init(_ viewController: DisplayLogic?)
}

protocol Displayable where Self: UIViewController  {
    
    associatedtype Factory: Factorable
    associatedtype DataSource: DataSourceable
    associatedtype View: UIView
    
    init(factory: Factory, mainView: View, dataSource: DataSource)
}

protocol DataSourceable {}

protocol Routeable {
    
    init(_ viewController: UIViewController?)
}
