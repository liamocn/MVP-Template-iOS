//
//  LoginPresenter.swift
//  MVP-Template-iOS
//
//  Created by Liam O'Callaghan on 17/05/2017.
//  Copyright © 2017 Liam O'Callaghan. All rights reserved.
//

import Foundation
import RxSwift

protocol LoginMvpView : MvpView {
    func userLoggedIn()
}

final class LoginPresenter : BasePresenter<LoginMvpView>{
    
    private let userRepository : UserRepository
    
    init(userRepository : UserRepository) {
        self.userRepository = userRepository
    }
    
    func logUserIn(){
        userRepository.logUserIn()
            .observeOn(MainScheduler.instance)
            .subscribe(
                onNext: { [weak self] (result: Bool) in
                    if(result){
                        self?.getMvpView().userLoggedIn()
                    }
            })
            .addDisposableTo(getDisposeBag())
    }
}


