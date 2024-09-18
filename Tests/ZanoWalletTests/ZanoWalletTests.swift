import XCTest
@testable import ZanoWallet
import CxxStdlib

fileprivate let tag = "=>"

final class ZanoWalletTests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods

        
        print("ZanoWallet.get_version():", ZanoWallet.get_version())
        print(ZanoWallet.get_version())

//        XCTAssertEqual(ZanoWallet.get_versionCppTest() , "2.0.0.317[cc79aa8]", "get_version() should give correct version.")
//        XCTAssertEqual(ZanoWallet.get_versionCpp() , "2.0.0.317[cc79aa8]", "get_version() should give correct version.")
        
        XCTAssertEqual(ZanoWallet.hwallet(), 0, "hwallet() should give zero.")
        // 2.0.0.317[cc79aa8]
        XCTAssertEqual(ZanoWallet.get_versionTest() , "2.0.0.317", "get_version() should give correct version.")
        XCTAssertEqual(ZanoWallet.get_version(), "2.0.0.336[132d2bf]", "get_version() should give correct version.")


        print(tag, "testInitAddress:", ZanoWallet.testInitAddress("", "", 0))
        print(tag, "testInitIpPort:", ZanoWallet.testInitIpPort("", "", "", 0))
        print(tag, "reset:", ZanoWallet.reset())
        print(tag, "set_log_level:", ZanoWallet.set_log_level())
        print(tag, "get_version:", ZanoWallet.get_version())
        print(tag, "get_wallet_files:", ZanoWallet.get_wallet_files())
        print(tag, "get_export_private_info:", ZanoWallet.get_export_private_info(""))
        print(tag, "delete_wallet:", ZanoWallet.delete_wallet(""))
        print(tag, "get_address_info:", ZanoWallet.get_address_info(""))

        print(tag, "get_appconfig:", ZanoWallet.get_appconfig(""))
        print(tag, "set_appconfig:", ZanoWallet.set_appconfig("", ""))
        print(tag, "generate_random_key:", ZanoWallet.generate_random_key(0))
        print(tag, "get_logs_buffer:", ZanoWallet.get_logs_buffer())
        print(tag, "truncate_log:", ZanoWallet.truncate_log())
        print(tag, "get_connectivity_status:", ZanoWallet.get_connectivity_status())

        print(tag, "open:", ZanoWallet.open("", ""))
        print(tag, "restore:", ZanoWallet.restore("", "", "", ""))
        print(tag, "generate:", ZanoWallet.generate("", ""))
        print(tag, "get_opened_wallets:", ZanoWallet.get_opened_wallets())

        print(tag, "get_wallet_status:", ZanoWallet.get_wallet_status(0))
        print(tag, "close_wallet:", ZanoWallet.close_wallet(0))
        print(tag, "invoke:", ZanoWallet.invoke(0, ""))

        print(tag, "async_call:", ZanoWallet.async_call("", 0, ""))
        print(tag, "try_pull_result:", ZanoWallet.try_pull_result(0))
        print(tag, "sync_call:", ZanoWallet.sync_call("", 0, ""))
        
        print(tag, "is_wallet_exist:", ZanoWallet.is_wallet_exist(""))
        print(tag, "get_wallet_info:", ZanoWallet.get_wallet_info(0))
        print(tag, "reset_wallet_password:", ZanoWallet.reset_wallet_password(0, ""))
        print(tag, "get_current_tx_fee:", ZanoWallet.get_current_tx_fee(0))

    }
}
