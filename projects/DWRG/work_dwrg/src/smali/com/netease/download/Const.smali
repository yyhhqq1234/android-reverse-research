.class public Lcom/netease/download/Const;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/Const$Stage;
    }
.end annotation


# static fields
.field public static final ALARM_REPEAT_INTERVAL:J = 0x3a98L

.field public static final ALL_DOWNLOADID:Ljava/lang/String; = "ALL_DOWNLOADID"

.field public static final CODE_FINISH:I = 0x3

.field public static final CODE_FINISH_ALL:I = 0x4

.field public static final CODE_FINISH_PART:I = 0x5

.field public static final CODE_FORCE_FINISH:I = 0x9

.field public static final CODE_NETWORK_CHANGE:I = 0xa

.field public static final CODE_PROGRESS:I = 0x2

.field public static final CODE_RESTART:I = 0x8

.field public static final CODE_START:I = 0x1

.field public static final CODE_START_LISTFILE:I = 0xb

.field public static final CODE_STOP:I = 0x6

.field public static final CODE_STOP_WIFI_ONLY:I = 0x7

.field public static final COMMON_FAIL:I = 0x4

.field public static final COMMON_FINISH:I = 0x3

.field public static final COMMON_INIT:I = 0x0

.field public static final COMMON_PROGRESS:I = 0x2

.field public static final COMMON_RESTART:I = 0x1

.field public static final COMMON_STOP:I = 0x5

.field public static final CONNECT_TIMEOUT_TIME:I = 0x1388

.field public static final COPY_BUFFER_SIZE:I = 0x8000

.field public static final DOWNLOAD_BUFFER_SIZE:I = 0x8000

.field public static final DOWNLOAD_CACHE_MIN_SIZE:J = 0x200000L

.field public static final DOWNLOAD_MAX_INTERVAL:J = 0x9a7ec800L

.field public static final DOWNLOAD_REPORT_MIN_SIZE:I = 0x600000

.field public static final DOWNLOAD_REPORT_THRESHOLD:I = 0x1f4

.field public static final DOWNLOAD_SEGMENT_THRESTHOD:I = 0x2000000

.field public static final DOWNLOAD_SPEED_LIMIT:I = 0xa00000

.field public static final FORCE_HTTPS:Z = false

.field public static final HEADER_HEADER_HOST:Ljava/lang/String; = "Host"

.field public static final HEADER_RANGE:Ljava/lang/String; = "Range"

.field public static final HEADER_RANGE_BYTES_PREF:Ljava/lang/String; = "bytes="

.field public static final HEADER_RANGE_BYTES_SUFF:Ljava/lang/String; = "-"

.field public static final HEADER_RANGE_END:Ljava/lang/String; = "END"

.field public static final HEADER_RANGE_START:Ljava/lang/String; = "START"

.field public static final HTTPDNS_CONFIG_CND:Ljava/lang/String; = "httpdns_config_cnd"

.field public static final HTTP_REQ_MAX_RETRY:I = 0x3

.field public static final KEY_MD5:Ljava/lang/String; = "md5"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final KEY_TOTAL_PART:Ljava/lang/String; = "total_part"

.field public static final LOG_TYPE_CONFIG_FILE:I = 0x4

.field public static final LOG_TYPE_HTTPDNS:I = 0x3

.field public static final LOG_TYPE_LVSIP:I = 0x5

.field public static final LOG_TYPE_PATCH:I = 0x2

.field public static final LOG_TYPE_STATE:I = 0x1

.field public static final LOG_TYPE_STATE_ERROR:Ljava/lang/String; = "error"

.field public static final LOG_TYPE_STATE_FINISH:Ljava/lang/String; = "finish"

.field public static final LOG_TYPE_STATE_START:Ljava/lang/String; = "start"

.field public static final MD5_FAIL_RETRY_DOWNLOAD_COUNT:I = 0x2

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final NT_HTTP_DNS_REQ_URL:Ljava/lang/String; = "106.2.42.106"

.field public static final NT_PARAM_CLIP:Ljava/lang/String; = "cli_IP"

.field public static final NT_PARAM_DOMAIN:Ljava/lang/String; = "domain"

.field public static final Not_MD5_BUT_LVSIP:Ljava/lang/String; = "Not_MD5_BUT_LVSIP"

.field public static final ON_PROGRESS_CALLBACK_TIME:I = 0x19

.field public static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "download_downloadid_file"

.field public static final READ_TIMEOUT_TIME:I = 0x1388

.field public static final REPORT_ALL_INFO:I = 0x2

.field public static final REPORT_BASE_INFO:I = 0x1

.field public static final REQ_CONFIG:I = 0x1

.field public static final REQ_DOWNLOAD:I = 0x4

.field public static final REQ_DOWNLOAD_PART:I = 0x5

.field public static final REQ_HTTPDNS_EDGE_NODE:I = 0x2

.field public static final REQ_HTTPDNS_TARGET_NODE:I = 0x3

.field public static REQ_IPS_FOR_LOG:[Ljava/lang/String; = null

.field public static REQ_IPS_FOR_LOG_CHINA:[Ljava/lang/String; = null

.field public static REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String; = null

.field public static REQ_IPS_FOR_WS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static REQ_IPS_WS:[Ljava/lang/String; = null

.field public static REQ_IPS_WS_CHINA:[Ljava/lang/String; = null

.field public static REQ_IPS_WS_OVERSEA:[Ljava/lang/String; = null

.field public static final REQ_PREFIX_FOR_WS:Ljava/lang/String; = "httpdnsip"

.field public static final REQ_URL_FOR_WS:Ljava/lang/String; = "mbdl.update.netease.com"

.field public static final RESP_CONTENT_SPIT1:Ljava/lang/String; = ","

.field public static final RESP_CONTENT_SPIT2:Ljava/lang/String; = ":"

.field public static final RESP_LINE_SPIT:Ljava/lang/String; = "</br>"

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_ONGOING:I = 0x1

.field public static final STATUS_STOPPED:I = 0x2

.field public static final TYPE_TARGET_NORMAL:Ljava/lang/String; = "list"

.field public static final TYPE_TARGET_PATCH:Ljava/lang/String; = "patch"

.field public static final URL_CONFIG_FORMAT:Ljava/lang/String; = "https://mbdl.update.netease.com/%s.mbdl"

.field public static URL_LOG:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "1.1.6"

.field public static final WS_HTTP_DNS_REQ_URL:Ljava/lang/String; = "https://mbdl.update.netease.com/httpdns.mbdl"

.field public static final WS_PARAM_CLIP:Ljava/lang/String; = "ws_cli_IP"

.field public static final WS_PARAM_DOMAIN:Ljava/lang/String; = "ws_domain"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v5, [Ljava/lang/String;

    .line 73
    const-string v1, "123.58.173.219"

    aput-object v1, v0, v2

    .line 74
    const-string v1, "220.181.30.195"

    aput-object v1, v0, v3

    .line 75
    const-string v1, "123.125.48.147"

    aput-object v1, v0, v4

    .line 72
    sput-object v0, Lcom/netease/download/Const;->REQ_IPS_WS_CHINA:[Ljava/lang/String;

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    .line 79
    const-string v1, "52.221.3.167"

    aput-object v1, v0, v2

    .line 80
    const-string v1, "52.76.137.125"

    aput-object v1, v0, v3

    .line 78
    sput-object v0, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 85
    const-string v1, "123.58.173.219"

    aput-object v1, v0, v2

    .line 86
    const-string v1, "220.181.30.195"

    aput-object v1, v0, v3

    .line 87
    const-string v1, "123.125.48.147"

    aput-object v1, v0, v4

    .line 88
    const-string v1, "52.221.3.167"

    aput-object v1, v0, v5

    .line 89
    const-string v1, "52.76.137.125"

    aput-object v1, v0, v6

    .line 84
    sput-object v0, Lcom/netease/download/Const;->REQ_IPS_WS:[Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/netease/download/Const$1;

    invoke-direct {v0}, Lcom/netease/download/Const$1;-><init>()V

    sput-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_WS:Ljava/util/List;

    .line 114
    const-string v0, "udt-sigma.proxima.nie.netease.com"

    sput-object v0, Lcom/netease/download/Const;->URL_LOG:Ljava/lang/String;

    .line 132
    new-array v0, v4, [Ljava/lang/String;

    .line 133
    const-string v1, "123.58.166.46"

    aput-object v1, v0, v2

    .line 134
    const-string v1, "123.58.170.147"

    aput-object v1, v0, v3

    .line 132
    sput-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_CHINA:[Ljava/lang/String;

    .line 137
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 138
    const-string v1, "13.112.202.90"

    aput-object v1, v0, v2

    .line 139
    const-string v1, "52.221.84.180"

    aput-object v1, v0, v3

    .line 140
    const-string v1, "13.54.11.65"

    aput-object v1, v0, v4

    .line 141
    const-string v1, "34.199.187.221"

    aput-object v1, v0, v5

    .line 142
    const-string v1, "52.52.82.138"

    aput-object v1, v0, v6

    .line 137
    sput-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    .line 145
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 146
    const-string v1, "123.58.166.46"

    aput-object v1, v0, v2

    .line 147
    const-string v1, "123.58.170.147"

    aput-object v1, v0, v3

    .line 148
    const-string v1, "13.112.202.90"

    aput-object v1, v0, v4

    .line 149
    const-string v1, "52.221.84.180"

    aput-object v1, v0, v5

    .line 150
    const-string v1, "13.54.11.65"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    .line 151
    const-string v2, "34.199.187.221"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 152
    const-string v2, "52.52.82.138"

    aput-object v2, v0, v1

    .line 145
    sput-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG:[Ljava/lang/String;

    .line 237
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setReqIpsForWs([Ljava/lang/String;)V
    .locals 1
    .param p0, "ips"    # [Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_WS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_WS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 243
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method
