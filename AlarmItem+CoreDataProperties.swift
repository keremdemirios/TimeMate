//
//  AlarmItem+CoreDataProperties.swift
//  Time Mate
//
//  Created by Kerem Demir on 14.12.2023.
//
//

import Foundation
import CoreData


extension AlarmItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AlarmItem> {
        return NSFetchRequest<AlarmItem>(entityName: "AlarmItem")
    }

    @NSManaged public var time: String?
    @NSManaged public var alarmLabel: String?
    @NSManaged public var timeAmPm: String?

}

extension AlarmItem : Identifiable {

}
