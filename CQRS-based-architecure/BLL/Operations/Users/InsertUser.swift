
import Foundation
import RxSwift
import RealmSwift

final class InsertUser: Operational {
    let realmProvider: RealmProvider
    let user: SampleUser
    
    init(user: SampleUser) {
        self.realmProvider = RealmProvider() //can be injected or get from IoC container
        self.user = user
    }
    
    func execute() { //no return if not necessary
        let mapper = SampleUserToSampleUserRealmMapper()
        let user = mapper.convert(self.user)
        
        realmProvider.execute(RealmInsertUser(user: user))
    }
}