//
//  BasePresenter.swift
//  MVP-Template-iOS
//
//  Created by Liam O'Callaghan on 06/05/2017.
//  Copyright © 2017 Liam O'Callaghan. All rights reserved.
//

import Foundation
import RxSwift

protocol MvpView: class {
    
}

protocol Presenter {
    associatedtype MvpView
    
    func attachView(_ view: MvpView)
    func detachView()
}

class BasePresenter<MvpView> : Presenter {
    
    typealias T = MvpView
    
    private var mvpView : T?
    private let disposeBag = DisposeBag()
    
    init(){
        
    }
    
    func attachView(_ view: T) {
        self.mvpView = view
    }
    
    func detachView() {
        self.mvpView = nil
    }
    
    func getMvpView() -> T{
        return self.mvpView!
    }
    
    func isViewAttached() -> Bool{
        return self.mvpView != nil
    }
    
    func getDisposeBag() -> DisposeBag{
        return disposeBag
    }
    
}
