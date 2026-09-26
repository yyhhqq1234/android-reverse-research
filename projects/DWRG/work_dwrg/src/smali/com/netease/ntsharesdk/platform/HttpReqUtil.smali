.class public Lcom/netease/ntsharesdk/platform/HttpReqUtil;
.super Ljava/lang/Object;
.source "HttpReqUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;
    }
.end annotation


# static fields
.field private static CONNECTION_TIMEOUT:I

.field private static SO_TIMEOUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x1388

    sput v0, Lcom/netease/ntsharesdk/platform/HttpReqUtil;->CONNECTION_TIMEOUT:I

    .line 20
    const/16 v0, 0x2710

    sput v0, Lcom/netease/ntsharesdk/platform/HttpReqUtil;->SO_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/netease/ntsharesdk/platform/HttpReqUtil;->CONNECTION_TIMEOUT:I

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/netease/ntsharesdk/platform/HttpReqUtil;->SO_TIMEOUT:I

    return v0
.end method

.method static wpost(Ljava/lang/String;Ljava/util/List;Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntsharesdk/platform/HttpReqUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntsharesdk/platform/HttpReqUtil$1;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    return-void
.end method
