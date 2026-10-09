.class public final Lcom/tencent/component/utils/HttpUtil$ClientOptions;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientOptions"
.end annotation


# instance fields
.field public maxConnection:I

.field public maxConnectionPerRoute:I

.field public multiConnection:Z

.field public timeToLive:J

.field public timeToLiveUnit:Ljava/util/concurrent/TimeUnit;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/utils/HttpUtil$ClientOptions;->multiConnection:Z

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/component/utils/HttpUtil$ClientOptions;->timeToLive:J

    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/tencent/component/utils/HttpUtil$ClientOptions;->timeToLiveUnit:Ljava/util/concurrent/TimeUnit;

    .line 78
    iput v2, p0, Lcom/tencent/component/utils/HttpUtil$ClientOptions;->maxConnection:I

    .line 83
    iput v2, p0, Lcom/tencent/component/utils/HttpUtil$ClientOptions;->maxConnectionPerRoute:I

    .line 87
    return-void
.end method
