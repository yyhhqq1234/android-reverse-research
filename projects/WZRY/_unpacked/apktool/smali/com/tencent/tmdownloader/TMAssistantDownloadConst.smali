.class public Lcom/tencent/tmdownloader/TMAssistantDownloadConst;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final DOWNLOADTYPE_DIFF_UPDATE:B = 0x3t

.field public static final DOWNLOADTYPE_FULL_UPDATE:B = 0x1t

.field public static final DOWNLOADTYPE_NORMAL_DOWNLOAD:B = 0x2t

.field public static final DOWNLOAD_PRIORITY_HIGHT:I = 0x2

.field public static final DOWNLOAD_PRIORITY_LOW:I = 0x0

.field public static final DOWNLOAD_PRIORITY_NORMAL:I = 0x1

.field public static PARAM_APPID:Ljava/lang/String; = null

.field public static PARAM_CHANNELID:Ljava/lang/String; = null

.field public static PARAM_DOWNLOADTYPE:Ljava/lang/String; = null

.field public static PARAM_EXTRA_DATA:Ljava/lang/String; = null

.field public static PARAM_TASK_PACKNAME:Ljava/lang/String; = null

.field public static PARAM_TASK_VERSION:Ljava/lang/String; = null

.field public static PARAM_UIN:Ljava/lang/String; = null

.field public static PARAM_UIN_TYPE:Ljava/lang/String; = null

.field public static PARAM_VIA:Ljava/lang/String; = null

.field public static final UINTYPE_CODE:Ljava/lang/String; = "code"

.field public static final UINTYPE_COMMONID:Ljava/lang/String; = "commonId"

.field public static final UINTYPE_OPENID:Ljava/lang/String; = "game_openId"

.field public static final UINTYPE_QQ_NUM:Ljava/lang/String; = "qqNumber"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "appId"

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_APPID:Ljava/lang/String;

    .line 21
    const-string v0, "packageName"

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_TASK_PACKNAME:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "versionCode"

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_TASK_VERSION:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "via"

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_VIA:Ljava/lang/String;

    .line 36
    const-string v0, "downloadType"

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_DOWNLOADTYPE:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "uin"

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_UIN:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "uinType"

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_UIN_TYPE:Ljava/lang/String;

    .line 51
    const-string v0, "channelId"

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_CHANNELID:Ljava/lang/String;

    .line 56
    const-string v0, "extra_data"

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_EXTRA_DATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
