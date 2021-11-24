//
//  AchievementRepository.swift
//  Routinus
//
//  Created by 박상우 on 2021/11/17.
//

import Foundation

import RoutinusNetwork

protocol AchievementRepository {
    func fetchAchievements(by id: String,
                           in yearMonth: String,
                           completion: (([Achievement]) -> Void)?)

    func updateAchievementCount(userID: String,
                                yearMonth: String,
                                day: String,
                                count: Int)

    func updateTotalCount(userID: String,
                          yearMonth: String,
                          day: String,
                          count: Int)
}

extension RoutinusRepository: AchievementRepository {
    func fetchAchievements(by id: String,
                           in yearMonth: String,
                           completion: (([Achievement]) -> Void)?) {
        RoutinusNetwork.achievements(of: id, in: yearMonth) { list in
            completion?(list.map { Achievement(achievementDTO: $0) })
        }
    }

    func updateAchievementCount(userID: String,
                                yearMonth: String,
                                day: String,
                                count: Int) {
        RoutinusNetwork.updateAchievementCount(userID: userID,
                                               yearMonth: yearMonth,
                                               day: day,
                                               count: count,
                                               completion: nil)
    }

    func updateTotalCount(userID: String,
                          yearMonth: String,
                          day: String,
                          count: Int) {
        RoutinusNetwork.updateTotalCount(userID: userID,
                                         yearMonth: yearMonth,
                                         day: day,
                                         count: count,
                                         completion: nil)
    }
}
