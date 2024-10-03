//
//  zano.swift
//  zano-ios
//
//  Created by Jumpei Katayama on 2024/09/13.
//

import Foundation
internal import CxxStdlib
internal import wallet

public class Zano {
    
    public static func helloWorld(name: String) -> String {
        return "Hello \(name)"
    }

    public static func fibonacci(_ n: Int) -> Int {
        var a = 1
        var b = 1
        guard n > 1 else { return a }

        (2...n).forEach { _ in
            (a, b) = (a + b, a)
        }
        return a
    }

    public static func factorial(n: Int) -> Int {
        var result = 1
        if n > 0 {
            (1...n).forEach { i in
                result *= i
            }
        }
        return result
    }

}


public enum ZanoWallet {

    // It doesn't export function with std.string return type :(
//    public static func get_versionCppTest() -> std.string {
//        std.string("2.2.3")
//    }
//    
    public static func get_versionCppTest() -> String {
        String(std.string("2.2.3"))
    }

    public static func get_versionCpp() -> String {
        String(plain_wallet.get_version())
    }


    //        ### Typedef
    //        - `hwallet`<br>A type representing a wallet handle, defined as `int64_t`.
//    public typealias hwallet = plain_wallet.hwallet
//    
//    //            ### Initialization Functions
//    //            std::string init(const std::string& address, const std::string& working_dir, int log_level);
//    public static func testInitAddress(_ address: std.string, _ working_dir: std.string, _ log_level: Int32) ->CxxStdlib.std.string {
//        plain_wallet.`init`(address, working_dir, log_level)
//    }
//    
//    //        std::string init(const std::string& ip, const std::string& port, const std::string& working_dir, intlog_level);
//    public static func testInitIpPort(_ ip: std.string, _ port: std.string, _ working_dir: std.string, _ log_level:Int32) -> CxxStdlib.std.string {
//        plain_wallet.`init`(ip, port, working_dir, log_level)
//    }
//    
//    //        ### Utility Functions
//    //        std::string reset();
//    public static func reset() -> CxxStdlib.std.string {
//        plain_wallet.reset()
//    }
//    
//    //        std::string set_log_level(int log_level);
//    public static func set_log_level() -> CxxStdlib.std.string {
//        plain_wallet.set_log_level(0)
//    }
//    
//    //        std::string get_version();
//    public static func get_version() -> CxxStdlib.std.string {
//        plain_wallet.get_version()
//    }
//    
//    //        std::string get_wallet_files();
//    public static func get_wallet_files() -> CxxStdlib.std.string {
//        plain_wallet.get_wallet_files()
//    }
//    
//    //        std::string get_export_private_info(const std::string& target_dir);
//    public static func get_export_private_info(_ target_dir: std.string) -> CxxStdlib.std.string {
//        plain_wallet.get_export_private_info(target_dir)
//    }
//    
//    //        std::string delete_wallet(const std::string& file_name);
//    public static func delete_wallet(_ file_name: std.string) -> CxxStdlib.std.string {
//        plain_wallet.delete_wallet(file_name)
//    }
//    
//    //        std::string get_address_info(const std::string& addr);
//    public static func get_address_info(_ addr: std.string) -> CxxStdlib.std.string {
//        plain_wallet.get_address_info(addr)
//    }
//    
//    //        ### Configuration Functions
//    //        std::string get_appconfig(const std::string& encryption_key);
//    public static func get_appconfig(_ encryption_key: std.string) -> CxxStdlib.std.string {
//        plain_wallet.get_appconfig(encryption_key)
//    }
//    
//    //        std::string set_appconfig(const std::string& conf_str, const std::string& encryption_key);
//    public static func set_appconfig(_ conf_str: std.string, _ encryption_key: std.string) -> CxxStdlib.std.string {
//        plain_wallet.set_appconfig(conf_str, encryption_key)
//    }
//    
//    //        std::string generate_random_key(uint64_t lenght);
//    public static func generate_random_key(_ lenght: UInt64) -> CxxStdlib.std.string {
//        plain_wallet.generate_random_key(lenght)
//    }
//    
//    //        std::string get_logs_buffer();
//    public static func get_logs_buffer() -> CxxStdlib.std.string {
//        plain_wallet.get_logs_buffer()
//    }
//    
//    //        std::string truncate_log();
//    public static func truncate_log() -> CxxStdlib.std.string {
//        plain_wallet.truncate_log()
//    }
//    
//    //        std::string get_connectivity_status();
//    public static func get_connectivity_status() -> CxxStdlib.std.string {
//        plain_wallet.get_connectivity_status()
//    }
//    
//    //        ### Wallet Management Functions
//    //        std::string open(const std::string& path, const std::string& password);
//    public static func open(_ path: std.string, _ password: std.string) -> CxxStdlib.std.string {
//        plain_wallet.open(path, password)
//    }
//    
//    //        std::string restore(const std::string& seed, const std::string& path, const std::string& password, conststd::string& seed_password);
//    public static func restore(_ seed: std.string, _ path: std.string, _ password: std.string, _ seed_password:std.string) -> CxxStdlib.std.string {
//        plain_wallet.restore(seed, path, password, seed_password)
//    }
//    
//    //        std::string generate(const std::string& path, const std::string& password);
//    public static func generate(_ path: std.string, _ password: std.string) -> CxxStdlib.std.string {
//        plain_wallet.generate(path, password)
//    }
//    
//    //        std::string get_opened_wallets();
//    public static func get_opened_wallets() -> CxxStdlib.std.string {
//        plain_wallet.get_opened_wallets()
//    }
//    
//    //        ### Wallet Operations
//    //        std::string get_wallet_status(hwallet h);
//    public static func get_wallet_status(_ h: hwallet) -> CxxStdlib.std.string {
//        plain_wallet.get_wallet_status(h)
//    }
//    
//    //        std::string close_wallet(hwallet h);
//    public static func close_wallet(_ h: hwallet) -> CxxStdlib.std.string {
//        plain_wallet.close_wallet(h)
//    }
//    
//    //        std::string invoke(hwallet h, const std::string& params);
//    public static func invoke(_ h: hwallet, _ params: std.string) -> CxxStdlib.std.string {
//        plain_wallet.invoke(h, params)
//    }
//    
//    
//    //        ### Asynchronous API Functions
//    //        std::string async_call(const std::string& method_name, uint64_t instance_id, const std::string& params);
//    public static func async_call(_ method_name: std.string, _ instance_id: UInt64, _ params: std.string) ->CxxStdlib.std.string {
//        plain_wallet.async_call(method_name, instance_id, params)
//    }
//    
//    //        std::string try_pull_result(uint64_t);
//    public static func try_pull_result(_ uint64_t: UInt64) -> CxxStdlib.std.string {
//        plain_wallet.try_pull_result(uint64_t)
//    }
//    
//    //        std::string sync_call(const std::string& method_name, uint64_t instance_id, const std::string& params);
//    public static func sync_call(_ method_name: std.string, _ instance_id: UInt64, _ params: std.string) ->CxxStdlib.std.string {
//        plain_wallet.sync_call(method_name, instance_id, params)
//    }
//    
//    //        ### Cake Wallet API Extension
//    //        bool is_wallet_exist(const std::string& path);
//    public static func is_wallet_exist(_ path: std.string) -> Bool {
//        plain_wallet.is_wallet_exist(path)
//    }
//    
//    //        std::string get_wallet_info(hwallet h);
//    public static func get_wallet_info(_ h: hwallet) -> CxxStdlib.std.string {
//        plain_wallet.get_wallet_info(h)
//    }
//    
//    //        std::string reset_wallet_password(hwallet h, const std::string& password);
//    public static func reset_wallet_password(_ h: hwallet, _ password: std.string) -> CxxStdlib.std.string {
//        plain_wallet.reset_wallet_password(h, password)
//    }
//    
//    //        uint64_t get_current_tx_fee(uint64_t priority); // 0 (default), 1 (unimportant), 2 (normal), 3 (elevated),4 (priority)
//    public static func get_current_tx_fee(_ priority: UInt64) -> CxxStdlib.__uint64_t {
//        plain_wallet.get_current_tx_fee(priority)
//    }
//

    
}
