.class final Lcom/tencent/tmassistantbase/util/TMLog$1;
.super Ljava/lang/ThreadLocal;
.source "ProGuard"


# static fields
.field private static final SIZE:I = 0x400


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/tencent/tmassistantbase/util/TMLog$1;->initialValue()[C

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()[C
    .locals 1

    .prologue
    .line 380
    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method
