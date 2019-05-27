/*
 *  @Name:     ocurl_code
 *  
 *  @Author:   Mikkel Hjortshoej
 *  @Email:    hjortshoej@handmade.network
 *  @Creation: 04-07-2017 22:33:30
 *
 *  @Last By:   Mikkel Hjortshoej
 *  @Last Time: 04-07-2017 22:46:24
 *  
 *  @Description:
 *  
 */

package ocurl

CurlCode :: enum i32 {
    Ok = 0,
    UnsupportedProtocol,     /* 1 */
    FailedInit,              /* 2 */
    URLMalformat,            /* 3 */
    NotBuiltIn,              /* 4 - [was obsoleted in August 2007 for 7.17.0, reused in April 2011 for 7.21.5] */
    CouldntResolveProxy,     /* 5 */
    CouldntResolveHost,      /* 6 */
    CouldntConnect,          /* 7 */
    WeirdServerReply,        /* 8 */
    RemoteAccessDenied,      /* 9 a service was denied by the server due to lack of access - when login fails this is not returned. */
    FtpAcceptFailed,         /* 10 - [was obsoleted in April 2006 for 7.15.4, reused in Dec 2011 for 7.24.0]*/
    FtpWeirdPassReply,       /* 11 */
    FtpAcceptTimeout,        /* 12 - timeout occurred accepting server [was obsoleted in August 2007 for 7.17.0, reused in Dec 2011 for 7.24.0]*/
    FtpWeirdPasvReply,       /* 13 */
    FtpWeird227Format,       /* 14 */
    FtpCantGetHost,          /* 15 */
    Http2,                   /* 16 - A problem in the http2 framing layer. [was obsoleted in August 2007 for 7.17.0, reused in July 2014 for 7.38.0] */
    FtpCouldntSetType,       /* 17 */
    PartialFile,             /* 18 */
    FtpCouldntRetrFile,      /* 19 */
    Obsolete20,              /* 20 - NOT USED */
    QuoteError,              /* 21 - quote command failure */
    HTTPReturnedError,       /* 22 */
    WriteError,              /* 23 */
    Obsolete24,              /* 24 - NOT USED */
    UploadFailed,            /* 25 - failed upload "command" */
    ReadError,               /* 26 - couldn't open/read from file */
    OutOfMemory,             /* 27 - OutOfMemory may sometimes indicate a conversion error instead of a memory allocation error if CURL_DOES_CONVERSIONS is defined */
    OperationTimedout,       /* 28 - the timeout time was reached */
    Obsolete29,              /* 29 - NOT USED */
    FtpPortFailed,           /* 30 - FTP PORT operation failed */
    FtpCouldntUseRest,       /* 31 - the REST command failed */
    Obsolete32,              /* 32 - NOT USED */
    RangeError,              /* 33 - RANGE "command" didn't work */
    HTTPPostError,           /* 34 */
    SslConnectError,         /* 35 - wrong when connecting with SSL */
    BadDownloadResume,       /* 36 - couldn't resume download */
    FileCouldntReadFile,     /* 37 */
    LdapCannotBind,          /* 38 */
    LdapSearchFailed,        /* 39 */
    Obsolete40,              /* 40 - NOT USED */
    FunctionNotFound,        /* 41 - NOT USED starting with 7.53.0 */
    AbortedByCallback,       /* 42 */
    BadFunctionArgument,     /* 43 */
    Obsolete44,              /* 44 - NOT USED */
    InterfaceFailed,         /* 45 - CURLOPT_INTERFACE failed */
    Obsolete46,              /* 46 - NOT USED */
    TooManyRedirects,        /* 47 - catch endless re-direct loops */
    UnknownOption,           /* 48 - User specified an unknown option */
    TelnetOptionSyntax,      /* 49 - Malformed telnet option */
    Obsolete50,              /* 50 - NOT USED */
    PeerFailedVerification,  /* 51 - peer's certificate or fingerprint wasn't verified fine */
    GotNothing,              /* 52 - when this is a specific error */
    SslEngineNotfound,       /* 53 - SSL crypto engine not found */
    SslEngineSetfailed,      /* 54 - can not set SSL crypto engine as default */
    SendError,               /* 55 - failed sending network data */
    RecvError,               /* 56 - failure in receiving network data */
    Obsolete57,              /* 57 - NOT IN USE */
    SslCertproblem,          /* 58 - problem with the local certificate */
    SslCipher,               /* 59 - couldn't use specified cipher */
    SslCacert,               /* 60 - problem with the CA cert (path?) */
    BadContentEncoding,      /* 61 - Unrecognized/bad encoding */
    LdapInvalidURL,          /* 62 - Invalid LDAP URL */
    FilesizeExceeded,        /* 63 - Maximum file size exceeded */
    UseSslFailed,            /* 64 - Requested FTP SSL level failed */
    SendFailRewind,          /* 65 - Sending the data requires a rewind that failed */
    SslEngineInitfailed,     /* 66 - failed to initialise ENGINE */
    LoginDenied,             /* 67 - user, password or similar was not accepted and we failed to login */
    TftpNotfound,            /* 68 - file not found on server */
    TftpPerm,                /* 69 - permission problem on server */
    RemoteDiskFull,          /* 70 - out of disk space on server */
    TftpIllegal,             /* 71 - Illegal TFTP operation */
    TftpUnknownid,           /* 72 - Unknown transfer ID */
    RemoteFileExists,        /* 73 - File already exists */
    TftpNosuchuser,          /* 74 - No such user */
    ConvFailed,              /* 75 - conversion failed */
    ConvReqd,                /* 76 - caller must register conversion callbacks using curl_easy_setopt options CURLOPT_CONV_FROM_NETWORK_FUNCTION, CURLOPT_CONV_TO_NETWORK_FUNCTION, and CURLOPT_CONV_FROM_UTF8_FUNCTION */
    SslCacertBadfile,        /* 77 - could not load CACERT file, missing or wrong format */
    RemoteFileNotFound,      /* 78 - remote file not found */
    Ssh,                     /* 79 - error from the SSH layer, somewhat generic so the error message will be of interest when this has happened */
    SslShutdownFailed,       /* 80 - Failed to shut down the SSL connection */
    Again,                   /* 81 - socket is not ready for send/recv, wait till it's ready and try again (Added in 7.18.2) */
    SslCrlBadfile,           /* 82 - could not load CRL file, missing or wrong format (Added in 7.19.0) */
    SslIssuerError,          /* 83 - Issuer check failed.  (Added in 7.19.0) */
    FtpPretFailed,           /* 84 - a PRET command failed */
    RtspCseqError,           /* 85 - mismatch of RTSP CSeq numbers */
    RtspSessionError,        /* 86 - mismatch of RTSP Session Ids */
    FtpBadFileList,          /* 87 - unable to parse FTP file list */
    ChunkFailed,             /* 88 - chunk callback reported error */
    NoConnectionAvailable,   /* 89 - No connection available, the session will be queued */
    SslPinnedpubkeynotmatch, /* 90 - specified pinned public key did not  match */
    SslInvalidcertstatus,    /* 91 - invalid certificate status */
    Http2Stream,             /* 92 - stream error in HTTP/2 framing layer */
    CurlLast                 /* never use! */
}