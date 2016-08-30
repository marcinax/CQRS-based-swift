
import Foundation
import RealmSwift

final class RealmFactory {
    static func getRealm(configurator: RealmConfigurable) -> Realm {
        let config = configurator.getConfig()
        return try! Realm(configuration: config)
    }
}