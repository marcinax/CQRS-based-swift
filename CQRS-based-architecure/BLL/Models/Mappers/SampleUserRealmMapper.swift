
import Foundation

final class SampleUserRealmToSampleUserMapper: Convertible {
    func convert(value: SampleUserRealm) -> SampleUser {
        let user = SampleUser(name: value.name!, age: value.age, email: value.email!) //check nils, not necessary now :)
        return user
    }
}

final class SampleUserToSampleUserRealmMapper: Convertible {
    func convert(value: SampleUser) -> SampleUserRealm {
        let user = SampleUserRealm()
        user.age = value.age
        user.name = value.name
        user.email = value.email
        
        return user
    }
}

final class SampleUserToSampleUserRealmArraysMapper: Convertible {
    func convert(value: [SampleUserRealm]) -> [SampleUser] {
        let mapper = SampleUserRealmToSampleUserMapper()
        return value.map(mapper)
    }
}