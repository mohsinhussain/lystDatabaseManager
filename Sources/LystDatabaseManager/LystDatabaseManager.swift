import Foundation

public class LystDatabaseManager {

    private static var sharedInstance : LystDatabaseManager{
        return LystDatabaseManager()
    }
    public class func shared() -> LystDatabaseManager {
        return sharedInstance
    }

    public func setup(dbVersion: UInt64) {
        LystDatabaseService.configureDataMigration(version: dbVersion)
    }
}
