//
//  HomePresenter.swift
//  MVP-Template-iOS
//
//  Created by Liam O'Callaghan on 06/05/2017.
//  Copyright © 2017 Liam O'Callaghan. All rights reserved.
//

import Foundation
import RxSwift

protocol HomeMvpView : MvpView {
    func hasContent(content : String)
}

final class HomePresenter : BasePresenter<HomeMvpView>{
    
    private let contentRepository : ContentRepository
    
    init(contentRepository : ContentRepository) {
        self.contentRepository = contentRepository
    }
    
    func getHomeContent(){
        contentRepository.getHomeContent()
        .observeOn(MainScheduler.instance)
            .subscribe(
                onNext: { [weak self] (result: String) in
                if(result != nil){
                    self?.getMvpView().hasContent(content: result)
                }
            })
        .addDisposableTo(getDisposeBag())
    }
    
    func getNavigationContent(){
        contentRepository.getNavigationContent()
            .observeOn(MainScheduler.instance)
            .subscribe(
                onNext: { [weak self] (result: String) in
                    if(result != nil){
                        self?.getMvpView().hasContent(content: result)
                    }
            })
            .addDisposableTo(getDisposeBag())
    }
    
}
