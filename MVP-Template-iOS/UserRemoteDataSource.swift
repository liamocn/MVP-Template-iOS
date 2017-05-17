//
//  UserRemoteDataSource.swift
//  MVP-Template-iOS
//
//  Created by Liam O'Callaghan on 17/05/2017.
//  Copyright © 2017 Liam O'Callaghan. All rights reserved.
//

import Foundation
import RxSwift

protocol UserRemoteDataSource{
    func logUserIn() -> Observable<Bool>
}

struct UserRemoteDataHandler : UserRemoteDataSource{
    func logUserIn() -> Observable<Bool> {
        return Observable.just(true)
    }
    
}
