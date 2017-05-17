//
//  UserRepository.swift
//  MVP-Template-iOS
//
//  Created by Liam O'Callaghan on 17/05/2017.
//  Copyright © 2017 Liam O'Callaghan. All rights reserved.
//

import Foundation
import RxSwift

struct UserRepository{
    
    private let userRemoteDataSource : UserRemoteDataSource
    
    init(userRemoteDataSource : UserRemoteDataSource){
        self.userRemoteDataSource = userRemoteDataSource
    }
    
    func logUserIn() -> Observable<Bool>{
        return userRemoteDataSource.logUserIn()
    }
    
}
