.class public Lcom/loopj/android/tgahttp/Configs/Configs;
.super Ljava/lang/Object;
.source "Configs.java"


# static fields
.field public static ACTIVITY_TO_TV:I

.field public static CLIENT_TYPE:I

.field public static Debug:Z

.field public static GAME_ID:Ljava/lang/String;

.field public static HTTP_KEY:Ljava/lang/String;

.field public static HTTP_KEY_NEW:Ljava/lang/String;

.field public static HTTP_SEQ:I

.field public static NOTICE_TO_TV:I

.field public static PIC_TO_TV:I

.field public static POP_TO_TV:I

.field public static UNITY_INVITE_TO_TV:I

.field public static UNITY_TO_POP:I

.field public static UNITY_TO_TV:I

.field public static URL_STR:Ljava/lang/String;

.field public static URL_STR_TEST:Ljava/lang/String;

.field public static domain:Ljava/lang/String;

.field public static domain_http:Ljava/lang/String;

.field public static ip_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static isLocalUpdate:Z

.field public static isOnline:Z

.field public static isP2P:Z

.field public static isTXPlayerLog:Z

.field public static isUseNewNet:Z

.field public static isUseTestIP:Z

.field public static plugin_version:I

.field public static test_http_ip:Ljava/lang/String;

.field public static test_ip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 9
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->GAME_ID:Ljava/lang/String;

    .line 12
    sput-boolean v2, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    .line 13
    sput-boolean v2, Lcom/loopj/android/tgahttp/Configs/Configs;->isUseTestIP:Z

    .line 14
    sput-boolean v2, Lcom/loopj/android/tgahttp/Configs/Configs;->isTXPlayerLog:Z

    .line 15
    sput-boolean v2, Lcom/loopj/android/tgahttp/Configs/Configs;->isLocalUpdate:Z

    .line 16
    sput-boolean v2, Lcom/loopj/android/tgahttp/Configs/Configs;->isOnline:Z

    .line 17
    sput-boolean v2, Lcom/loopj/android/tgahttp/Configs/Configs;->isP2P:Z

    .line 18
    sput-boolean v2, Lcom/loopj/android/tgahttp/Configs/Configs;->isUseNewNet:Z

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->URL_STR:Ljava/lang/String;

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->URL_STR_TEST:Ljava/lang/String;

    .line 33
    sput v1, Lcom/loopj/android/tgahttp/Configs/Configs;->plugin_version:I

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->domain:Ljava/lang/String;

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->domain_http:Ljava/lang/String;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->test_ip:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->test_http_ip:Ljava/lang/String;

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->HTTP_KEY:Ljava/lang/String;

    .line 47
    const-string v0, "b45819e15e7c86a6d658c71e263f81f4"

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->HTTP_KEY_NEW:Ljava/lang/String;

    .line 48
    sput v2, Lcom/loopj/android/tgahttp/Configs/Configs;->HTTP_SEQ:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->ip_list:Ljava/util/ArrayList;

    .line 53
    sput v1, Lcom/loopj/android/tgahttp/Configs/Configs;->UNITY_TO_TV:I

    .line 54
    sput v1, Lcom/loopj/android/tgahttp/Configs/Configs;->PIC_TO_TV:I

    .line 55
    sput v1, Lcom/loopj/android/tgahttp/Configs/Configs;->NOTICE_TO_TV:I

    .line 56
    sput v1, Lcom/loopj/android/tgahttp/Configs/Configs;->ACTIVITY_TO_TV:I

    .line 58
    sput v1, Lcom/loopj/android/tgahttp/Configs/Configs;->UNITY_TO_POP:I

    .line 59
    sput v1, Lcom/loopj/android/tgahttp/Configs/Configs;->POP_TO_TV:I

    .line 60
    sput v1, Lcom/loopj/android/tgahttp/Configs/Configs;->UNITY_INVITE_TO_TV:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
