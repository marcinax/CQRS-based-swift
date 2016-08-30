import Foundation
import RealmSwift

final class DefaultRealmConfig : RealmConfigurable {
    private let fileName: String
    
    init(fileName: String) {
        self.fileName = fileName
    }
    
    func getConfig() -> Realm.Configuration {
        var config = Realm.Configuration()
        
        config.fileURL = config
            .fileURL!
            .URLByDeletingLastPathComponent?
            .URLByAppendingPathComponent("\(self.fileName).realm")
        
        return config
    }
}
