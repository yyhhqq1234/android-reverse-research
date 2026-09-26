.class public Lcom/netease/download/reporter/KeyConst;
.super Ljava/lang/Object;
.source "KeyConst.java"


# static fields
.field public static KEY_ABNORMAL_RETNUM:Ljava/lang/String;

.field public static KEY_AREAZONE:Ljava/lang/String;

.field public static KEY_CLI_DNS:Ljava/lang/String;

.field public static KEY_CLI_DNSCHECK:Ljava/lang/String;

.field public static KEY_CLI_GATEWAY:Ljava/lang/String;

.field public static KEY_CLI_IP:Ljava/lang/String;

.field public static KEY_COLLECT_CONDITION:Ljava/lang/String;

.field public static KEY_COMPLETE_RATE:Ljava/lang/String;

.field public static KEY_DATASOURCE:Ljava/lang/String;

.field public static KEY_DETECT_DATA:Ljava/lang/String;

.field public static KEY_DL_ERROR:Ljava/lang/String;

.field public static KEY_DL_SIZE:Ljava/lang/String;

.field public static KEY_DL_SPEED:Ljava/lang/String;

.field public static KEY_DL_SPEED_LINK_AVG:Ljava/lang/String;

.field public static KEY_DL_TIME:Ljava/lang/String;

.field public static KEY_DNS_TIME:Ljava/lang/String;

.field public static KEY_DOWNLOADID:Ljava/lang/String;

.field public static KEY_ERRCODENUM:Ljava/lang/String;

.field public static KEY_ERRCODE_XX_FILES:Ljava/lang/String;

.field public static KEY_ERROR_LOG:Ljava/lang/String;

.field public static KEY_FILENUM:Ljava/lang/String;

.field public static KEY_FINISH:Ljava/lang/String;

.field public static KEY_GAMECODE:Ljava/lang/String;

.field public static KEY_HTTPDNS:Ljava/lang/String;

.field public static KEY_HTTPDNS_TIME:Ljava/lang/String;

.field public static KEY_HTTPDNS_XX_GPH_IPS:Ljava/lang/String;

.field public static KEY_HTTP_CODE:Ljava/lang/String;

.field public static KEY_IP_PATCH_HOST:Ljava/lang/String;

.field public static KEY_IP_REMOVED:Ljava/lang/String;

.field public static KEY_LOCALGW_LOSS:Ljava/lang/String;

.field public static KEY_LOCALGW_RTT:Ljava/lang/String;

.field public static KEY_LOG_TEST:Ljava/lang/String;

.field public static KEY_LVSIP:Ljava/lang/String;

.field public static KEY_LVSIP_IPS:Ljava/lang/String;

.field public static KEY_MOBILE_TYPE:Ljava/lang/String;

.field public static KEY_NETWORK:Ljava/lang/String;

.field public static KEY_NETWORK_ISP:Ljava/lang/String;

.field public static KEY_NETWORK_SIGNAL:Ljava/lang/String;

.field public static KEY_NETWORK_SWITCH:Ljava/lang/String;

.field public static KEY_OS_NAME:Ljava/lang/String;

.field public static KEY_OS_VER:Ljava/lang/String;

.field public static KEY_OVERALL:Ljava/lang/String;

.field public static KEY_PATCH_HOST:Ljava/lang/String;

.field public static KEY_PUSH_TIME:Ljava/lang/String;

.field public static KEY_RETCODE_XX_FILES:Ljava/lang/String;

.field public static KEY_SERVER_LIST_HOST:Ljava/lang/String;

.field public static KEY_SESSIONID:Ljava/lang/String;

.field public static KEY_STATUS:Ljava/lang/String;

.field public static KEY_TIMEZONE:Ljava/lang/String;

.field public static KEY_TOTAL:Ljava/lang/String;

.field public static KEY_TOTAL_SIZE:Ljava/lang/String;

.field public static KEY_TRANSFER:Ljava/lang/String;

.field public static KEY_UDID:Ljava/lang/String;

.field public static KEY_UDT_VER:Ljava/lang/String;

.field public static KEY_UPDATE:Ljava/lang/String;

.field public static KEY_UPDATE_SVRIPS:Ljava/lang/String;

.field public static KEY_URL:Ljava/lang/String;

.field public static KEY_VALIDATE:Ljava/lang/String;

.field public static KEY_XX_GPH:Ljava/lang/String;

.field public static KEY_XX_GPH_SLOW_IPS:Ljava/lang/String;

.field public static KEY_XX_GPH_SVRIPS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "sessionid"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_SESSIONID:Ljava/lang/String;

    .line 18
    const-string v0, "downloadid"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_DOWNLOADID:Ljava/lang/String;

    .line 19
    const-string v0, "udid"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_UDID:Ljava/lang/String;

    .line 20
    const-string v0, "os_name"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_OS_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "os_ver"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_OS_VER:Ljava/lang/String;

    .line 22
    const-string v0, "udt_ver"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_UDT_VER:Ljava/lang/String;

    .line 23
    const-string v0, "gamecode"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_GAMECODE:Ljava/lang/String;

    .line 24
    const-string v0, "timezone"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_TIMEZONE:Ljava/lang/String;

    .line 25
    const-string v0, "areazone"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_AREAZONE:Ljava/lang/String;

    .line 26
    const-string v0, "network"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_NETWORK:Ljava/lang/String;

    .line 27
    const-string v0, "network_isp"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_NETWORK_ISP:Ljava/lang/String;

    .line 28
    const-string v0, "network_signal"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_NETWORK_SIGNAL:Ljava/lang/String;

    .line 29
    const-string v0, "cli_ip"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_IP:Ljava/lang/String;

    .line 30
    const-string v0, "cli_gateway"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_GATEWAY:Ljava/lang/String;

    .line 31
    const-string v0, "cli_dns"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_DNS:Ljava/lang/String;

    .line 32
    const-string v0, "cli_dnscheck"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_DNSCHECK:Ljava/lang/String;

    .line 33
    const-string v0, "localgw_rtt"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_LOCALGW_RTT:Ljava/lang/String;

    .line 34
    const-string v0, "localgw_loss"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_LOCALGW_LOSS:Ljava/lang/String;

    .line 35
    const-string v0, "network_switch"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_NETWORK_SWITCH:Ljava/lang/String;

    .line 36
    const-string v0, "mobile_type"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_MOBILE_TYPE:Ljava/lang/String;

    .line 37
    const-string v0, "total_size"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_TOTAL_SIZE:Ljava/lang/String;

    .line 40
    const-string v0, "dns_time"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_DNS_TIME:Ljava/lang/String;

    .line 41
    const-string v0, "update"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_UPDATE:Ljava/lang/String;

    .line 42
    const-string v0, "httpdns"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_HTTPDNS:Ljava/lang/String;

    .line 43
    const-string v0, "httpdns_time"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_HTTPDNS_TIME:Ljava/lang/String;

    .line 44
    const-string v0, "xx_gph_svrips"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_XX_GPH_SVRIPS:Ljava/lang/String;

    .line 45
    const-string v0, "httpdns_xx_gph_ips"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_HTTPDNS_XX_GPH_IPS:Ljava/lang/String;

    .line 46
    const-string v0, "update_svrips"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_UPDATE_SVRIPS:Ljava/lang/String;

    .line 47
    const-string v0, "lvsip"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_LVSIP:Ljava/lang/String;

    .line 48
    const-string v0, "lvsip_ips"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_LVSIP_IPS:Ljava/lang/String;

    .line 52
    const-string v0, "abnormal_retnum"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_ABNORMAL_RETNUM:Ljava/lang/String;

    .line 53
    const-string v0, "retcode_xx_files"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_RETCODE_XX_FILES:Ljava/lang/String;

    .line 54
    const-string v0, "errcodenum"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_ERRCODENUM:Ljava/lang/String;

    .line 55
    const-string v0, "errcode_xx_files"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_ERRCODE_XX_FILES:Ljava/lang/String;

    .line 56
    const-string v0, "ip_removed"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_IP_REMOVED:Ljava/lang/String;

    .line 57
    const-string v0, "xx_gph_slow_ips"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_XX_GPH_SLOW_IPS:Ljava/lang/String;

    .line 61
    const-string v0, "dl_size"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_DL_SIZE:Ljava/lang/String;

    .line 62
    const-string v0, "overall"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_OVERALL:Ljava/lang/String;

    .line 63
    const-string v0, "xx_gph"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_XX_GPH:Ljava/lang/String;

    .line 64
    const-string v0, "dl_time"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_DL_TIME:Ljava/lang/String;

    .line 65
    const-string v0, "dl_speed"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_DL_SPEED:Ljava/lang/String;

    .line 66
    const-string v0, "dl_speed_link_avg"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_DL_SPEED_LINK_AVG:Ljava/lang/String;

    .line 67
    const-string v0, "filenum"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_FILENUM:Ljava/lang/String;

    .line 68
    const-string v0, "total"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_TOTAL:Ljava/lang/String;

    .line 69
    const-string v0, "finish"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_FINISH:Ljava/lang/String;

    .line 70
    const-string v0, "transfer"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_TRANSFER:Ljava/lang/String;

    .line 71
    const-string v0, "dl_error"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_DL_ERROR:Ljava/lang/String;

    .line 72
    const-string v0, "validate"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_VALIDATE:Ljava/lang/String;

    .line 73
    const-string v0, "complete_rate"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_COMPLETE_RATE:Ljava/lang/String;

    .line 74
    const-string v0, "status"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_STATUS:Ljava/lang/String;

    .line 75
    const-string v0, "testlog"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_LOG_TEST:Ljava/lang/String;

    .line 78
    const-string v0, "detect_data"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_DETECT_DATA:Ljava/lang/String;

    .line 79
    const-string v0, "data_source"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_DATASOURCE:Ljava/lang/String;

    .line 80
    const-string v0, "collect_condition"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_COLLECT_CONDITION:Ljava/lang/String;

    .line 81
    const-string v0, "push_time"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_PUSH_TIME:Ljava/lang/String;

    .line 82
    const-string v0, "server_list_host"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_SERVER_LIST_HOST:Ljava/lang/String;

    .line 83
    const-string v0, "patch_host"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_PATCH_HOST:Ljava/lang/String;

    .line 84
    const-string v0, "url"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_URL:Ljava/lang/String;

    .line 85
    const-string v0, "ip_patch_host"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_IP_PATCH_HOST:Ljava/lang/String;

    .line 86
    const-string v0, "http_code"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_HTTP_CODE:Ljava/lang/String;

    .line 87
    const-string v0, "error_log"

    sput-object v0, Lcom/netease/download/reporter/KeyConst;->KEY_ERROR_LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method
