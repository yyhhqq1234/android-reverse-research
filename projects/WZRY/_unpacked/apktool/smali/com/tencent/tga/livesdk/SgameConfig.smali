.class public Lcom/tencent/tga/livesdk/SgameConfig;
.super Ljava/lang/Object;
.source "SgameConfig.java"


# static fields
.field public static final sgame_HTTP_KEY:Ljava/lang/String; = "Q96CnfE,:#B4)G~5vVkSz8y{c@Z*jOU!"

.field public static final sgame_NOTICE_TO_TV:I = 0x31

.field public static final sgame_PIC_TO_TV:I = 0x2d

.field public static final sgame_POP_TO_TV:I = 0x4

.field public static final sgame_UNITY_INVITE_TO_TV:I = 0x5

.field public static final sgame_UNITY_TO_POP:I = 0x3

.field public static final sgame_UNITY_TO_TV:I = 0x1

.field public static final sgame_URL_STR:Ljava/lang/String; = "https://op.tga.qq.com:443/request?cmd=%s&subcmd=%s&version=%s&clienttype=6&sig=%s"

.field public static final sgame_URL_STR_TEST:Ljava/lang/String; = "https://op.tga.qq.com:443/test/request?cmd=%s&subcmd=%s&version=%s&clienttype=6&sig=%s"

.field public static final sgame_WATCH_MISSION_TO_TV:I = 0x4d

.field public static final sgame_WSQ_TO_VOD:I = 0x6

.field public static final sgame_domain:Ljava/lang/String; = "conn.tga.qq.com"

.field public static final sgame_domain_http:Ljava/lang/String; = "op.tga.qq.com"

.field public static final sgame_ip1:Ljava/lang/String; = "101.226.76.161"

.field public static final sgame_ip2:Ljava/lang/String; = "140.207.127.94"

.field public static final sgame_ip3:Ljava/lang/String; = "163.177.68.171"

.field public static final sgame_ip4:Ljava/lang/String; = "219.133.60.215"

.field public static sgame_plugin_version:I = 0x0

.field public static final sgame_test_http_ip:Ljava/lang/String; = "op.tga.qq.com"

.field public static final sgame_test_ip:Ljava/lang/String; = "101.227.153.22"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const v0, 0x3939402

    sput v0, Lcom/tencent/tga/livesdk/SgameConfig;->sgame_plugin_version:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initConfig()V
    .locals 2

    .prologue
    .line 55
    sget v0, Lcom/tencent/tga/livesdk/SgameConfig;->sgame_plugin_version:I

    sput v0, Lcom/loopj/android/tgahttp/Configs/Configs;->plugin_version:I

    .line 57
    const-string v0, "conn.tga.qq.com"

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->domain:Ljava/lang/String;

    .line 59
    const-string v0, "op.tga.qq.com"

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->domain_http:Ljava/lang/String;

    .line 61
    const-string v0, "101.227.153.22"

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->test_ip:Ljava/lang/String;

    .line 62
    const-string v0, "op.tga.qq.com"

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->test_http_ip:Ljava/lang/String;

    .line 63
    const-string v0, "https://op.tga.qq.com:443/request?cmd=%s&subcmd=%s&version=%s&clienttype=6&sig=%s"

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->URL_STR:Ljava/lang/String;

    .line 64
    const-string v0, "https://op.tga.qq.com:443/test/request?cmd=%s&subcmd=%s&version=%s&clienttype=6&sig=%s"

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->URL_STR_TEST:Ljava/lang/String;

    .line 66
    const-string v0, "Q96CnfE,:#B4)G~5vVkSz8y{c@Z*jOU!"

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->HTTP_KEY:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->ip_list:Ljava/util/ArrayList;

    const-string v1, "101.226.76.161"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->ip_list:Ljava/util/ArrayList;

    const-string v1, "140.207.127.94"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->ip_list:Ljava/util/ArrayList;

    const-string v1, "163.177.68.171"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->ip_list:Ljava/util/ArrayList;

    const-string v1, "219.133.60.215"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const/4 v0, 0x1

    sput v0, Lcom/loopj/android/tgahttp/Configs/Configs;->UNITY_TO_TV:I

    .line 76
    const/16 v0, 0x2d

    sput v0, Lcom/loopj/android/tgahttp/Configs/Configs;->PIC_TO_TV:I

    .line 77
    const/16 v0, 0x31

    sput v0, Lcom/loopj/android/tgahttp/Configs/Configs;->NOTICE_TO_TV:I

    .line 79
    const/4 v0, 0x3

    sput v0, Lcom/loopj/android/tgahttp/Configs/Configs;->UNITY_TO_POP:I

    .line 80
    const/4 v0, 0x4

    sput v0, Lcom/loopj/android/tgahttp/Configs/Configs;->POP_TO_TV:I

    .line 81
    const/4 v0, 0x5

    sput v0, Lcom/loopj/android/tgahttp/Configs/Configs;->UNITY_INVITE_TO_TV:I

    .line 82
    return-void
.end method
