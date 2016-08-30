
import Foundation
import RealmSwift

final class SampleUserRealm : Object {
    dynamic var date = NSDate()
    dynamic var cycle : Int = 0
    dynamic var dayInCycle : Int = 0
    dynamic var isCompleted : Bool = false
    let sets = List<IntObjectRealm>()
    dynamic var trainingType : String?
    dynamic var totalReps: Int = 0
}
