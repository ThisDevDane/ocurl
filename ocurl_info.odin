/*
 *  @Name:     ocurl_info
 *  
 *  @Author:   Mikkel Hjortshoej
 *  @Email:    hjortshoej@handmade.network
 *  @Creation: 04-07-2017 22:32:54
 *
 *  @Last By:   Mikkel Hjortshoej
 *  @Last Time: 04-07-2017 22:32:57
 *  
 *  @Description:
 *  
 */

package ocurl

CURLINFO_STRING   :: 0x100000;
CURLINFO_LONG     :: 0x200000;
CURLINFO_DOUBLE   :: 0x300000;
CURLINFO_SLIST    :: 0x400000;
CURLINFO_PTR      :: 0x400000;
CURLINFO_SOCKET   :: 0x500000;
CURLINFO_MASK     :: 0x0fffff;
CURLINFO_TYPEMASK :: 0xf00000;

CurlInfo :: enum i32 {
    None                    = 0, //Never use this
    EffectiveURL            = CURLINFO_STRING + 1,
    ResponseCode            = CURLINFO_LONG   + 2,
    TotalTime               = CURLINFO_DOUBLE + 3,
    NamelookupTime          = CURLINFO_DOUBLE + 4,
    ConnectTime             = CURLINFO_DOUBLE + 5,
    PretransferTime         = CURLINFO_DOUBLE + 6,
    SizeUpload              = CURLINFO_DOUBLE + 7,
    SizeDownload            = CURLINFO_DOUBLE + 8,
    SpeedDownload           = CURLINFO_DOUBLE + 9,
    SpeedUpload             = CURLINFO_DOUBLE + 10,
    HeaderSize              = CURLINFO_LONG   + 11,
    RequestSize             = CURLINFO_LONG   + 12,
    SslVerifyresult         = CURLINFO_LONG   + 13,
    Filetime                = CURLINFO_LONG   + 14,
    ContentLengthDownload   = CURLINFO_DOUBLE + 15,
    ContentLengthUpload     = CURLINFO_DOUBLE + 16,
    StarttransferTime       = CURLINFO_DOUBLE + 17,
    ContentType             = CURLINFO_STRING + 18,
    RedirectTime            = CURLINFO_DOUBLE + 19,
    RedirectCount           = CURLINFO_LONG   + 20,
    Private                 = CURLINFO_STRING + 21,
    HTTPConnectcode         = CURLINFO_LONG   + 22,
    HttpauthAvail           = CURLINFO_LONG   + 23,
    ProxyauthAvail          = CURLINFO_LONG   + 24,
    OsErrno                 = CURLINFO_LONG   + 25,
    NumConnects             = CURLINFO_LONG   + 26,
    SslEngines              = CURLINFO_SLIST  + 27,
    Cookielist              = CURLINFO_SLIST  + 28,
    Lastsocket              = CURLINFO_LONG   + 29,
    FtpEntryPath            = CURLINFO_STRING + 30,
    RedirectURL             = CURLINFO_STRING + 31,
    PrimaryIp               = CURLINFO_STRING + 32,
    AppconnectTime          = CURLINFO_DOUBLE + 33,
    Certinfo                = CURLINFO_PTR    + 34,
    ConditionUnmet          = CURLINFO_LONG   + 35,
    RtspSessionID           = CURLINFO_STRING + 36,
    RtspClientCseq          = CURLINFO_LONG   + 37,
    RtspServerCseq          = CURLINFO_LONG   + 38,
    RtspCseqRecv            = CURLINFO_LONG   + 39,
    PrimaryPort             = CURLINFO_LONG   + 40,
    LocalIp                 = CURLINFO_STRING + 41,
    LocalPort               = CURLINFO_LONG   + 42,
    TlsSession              = CURLINFO_PTR    + 43,
    Activesocket            = CURLINFO_SOCKET + 44,
    TlsSslPtr               = CURLINFO_PTR    + 45,
    HTTPVersion             = CURLINFO_LONG   + 46,
    ProxySslVerifyresult    = CURLINFO_LONG + 47,
    Protocol                = CURLINFO_LONG   + 48,
    Scheme                  = CURLINFO_STRING + 49,
    /* Fill in new entries below here! */   
    Lastone                 = 49
}