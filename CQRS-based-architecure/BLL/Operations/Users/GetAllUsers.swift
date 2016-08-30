
import Foundation
import RxSwift
import RealmSwift

final class GetAllUsers: Operational {
    let realmProvider: RealmProvider
    
    init() {
        self.realmProvider = RealmProvider() //can be injected or get from IoC container
    }
    
    func execute() -> Observable<[SampleUser]> {
        let result: Observable<[SampleUser]> = realmProvider.execute(RealmGetAllUsers())
            .map(SampleUserToSampleUserRealmArraysMapper())
        
        return result
    }
}