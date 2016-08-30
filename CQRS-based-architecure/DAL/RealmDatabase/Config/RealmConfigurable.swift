
import Foundation
import RealmSwift

protocol RealmConfigurable {
    func getConfig() -> Realm.Configuration
}