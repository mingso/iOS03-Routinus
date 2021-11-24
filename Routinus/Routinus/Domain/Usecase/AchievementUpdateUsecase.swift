//
//  AchievementUpdateUsecase.swift
//  Routinus
//
//  Created by 박상우 on 2021/11/18.
//

import Foundation

protocol AchievementUpdatableUsecase {
    func updateAchievementCount()
    func updateTotalCount(_ count: Int)
}

struct AchievementUpdateUsecase: AchievementUpdatableUsecase {
    var repository: AchievementRepository

    init(repository: AchievementRepository) {
        self.repository = repository
    }

    func updateAchievementCount() {
        guard let userID = RoutinusRepository.userID() else { return }
        let yearMonth = Date().toYearMonthString()
        let day = Date().toDayString()
        self.repository.updateAchievementCount(userID: userID,
                                          yearMonth: yearMonth,
                                          day: day)
    }

    func updateTotalCount(_ count: Int) {
        guard let userID = RoutinusRepository.userID() else { return }
        let yearMonth = Date().toYearMonthString()
        let day = Date().toDayString()
        self.repository.updateTotalCount(userID: userID,
                                         yearMonth: yearMonth,
                                         day: day,
                                         count: count)
    }
}
