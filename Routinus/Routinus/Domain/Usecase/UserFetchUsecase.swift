//
//  UserFetchUsecase.swift
//  Routinus
//
//  Created by 박상우 on 2021/11/17.
//

import Foundation

protocol UserFetchableUsecase {
    func fetchUser(completion: @escaping (User) -> Void)
    func fetchUserID() -> String?
}

struct UserFetchUsecase: UserFetchableUsecase {
    var repository: UserRepository

    init(repository: UserRepository) {
        self.repository = repository
    }

    func fetchUser(completion: @escaping (User) -> Void) {
        guard let id = RoutinusRepository.userID() else { return }

        repository.fetchUser(by: id) { user in
            completion(user)
        }
    }

    func fetchUserID() -> String? {
        return RoutinusRepository.userID()
    }
}
