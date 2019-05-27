/*
 *  @Name:     ocurl_easy
 *  
 *  @Author:   Mikkel Hjortshoej
 *  @Email:    hjortshoej@handmade.network
 *  @Creation: 04-07-2017 21:38:19
 *
 *  @Last By:   Mikkel Hjortshoej
 *  @Last Time: 11-11-2017 13:35:53
 *  
 *  @Description:
 *  
 */

package ocurl

foreign import libcurl "/external/curl.lib";

CURL :: struct {};

foreign libcurl {
    @(link_name = "curl_easy_init")
    init     :: proc() -> ^CURL                                                               ---;
    @(link_name = "curl_easy_cleanup")
    cleanup  :: proc(curl : ^CURL)                                                         ---;
    @(link_name = "curl_easy_setopt")
    setopt   :: proc(curl : ^CURL, option : CurlOption, #c_vararg params : ..any)           ---;
    @(link_name = "curl_easy_perform")
    perform  :: proc(curl : ^CURL) -> CurlCode                                             ---;
    @(link_name = "curl_easy_getinfo")
    get_info :: proc(curl : ^CURL, info : CurlInfo, #c_vararg params : ..any) -> CurlCode  ---;

    @(link_name = "curl_easy_duphandle")
    duplicate_handle :: proc(curl : ^CURL) -> ^CURL                                              ---;
    @(link_name = "curl_easy_reset")
    reset            :: proc(curl : ^CURL)                                                           ---;
    @(link_name = "curl_easy_recv")
    receive          :: proc(curl : ^CURL, buffer : rawptr, buflen : i64, n : ^i64) -> CurlCode       ---;
    @(link_name = "curl_easy_send")
    send             :: proc(curl : ^CURL, buffer : rawptr, buflen : i64, n : ^i64) -> CurlCode       ---;
}