.class public Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;
.super Ljava/lang/Object;
.source "MSDKMatIdUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;
    }
.end annotation


# static fields
.field private static mMatId:Ljava/lang/String;

.field private static sMatIdTimeOut:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;->sMatIdTimeOut:J

    .line 13
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;->mMatId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 11
    sget-wide v0, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;->sMatIdTimeOut:J

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;->mMatId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 11
    sput-object p0, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;->mMatId:Ljava/lang/String;

    return-object p0
.end method

.method public static reqMatid(Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;

    .prologue
    .line 17
    const-string v1, "matId"

    invoke-static {v1}, Lcom/tencent/msdk/framework/tools/SettingDBHelper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "matId":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    invoke-interface {p0, v0}, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;->onSuccess(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 23
    :cond_0
    new-instance v1, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$1;

    invoke-direct {v1, p0}, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$1;-><init>(Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;)V

    .line 49
    invoke-virtual {v1}, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$1;->start()V

    goto :goto_0
.end method
