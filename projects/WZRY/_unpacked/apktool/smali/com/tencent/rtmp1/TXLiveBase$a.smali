.class Lcom/tencent/rtmp1/TXLiveBase$a;
.super Ljava/lang/Object;
.source "TXLiveBase.java"

# interfaces
.implements Lcom/tencent/liteav/basic/log/TXCLog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp1/TXLiveBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/rtmp1/TXLiveBase$1;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLiveBase$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/tencent/rtmp1/TXLiveBase;->access$100()Lcom/tencent/rtmp1/ITXLiveBaseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/tencent/rtmp1/TXLiveBase;->access$100()Lcom/tencent/rtmp1/ITXLiveBaseListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/rtmp1/ITXLiveBaseListener;->OnLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method
