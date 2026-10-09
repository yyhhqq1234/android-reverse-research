.class Lcom/tencent/beacon/event/UserAction$BeaconJsBridge;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/event/UserAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BeaconJsBridge"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/beacon/event/UserAction$1;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/tencent/beacon/event/UserAction$BeaconJsBridge;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetJsClientID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 405
    invoke-static {p1}, Lcom/tencent/beacon/event/UserAction;->a(Ljava/lang/String;)V

    .line 406
    return-void
.end method
