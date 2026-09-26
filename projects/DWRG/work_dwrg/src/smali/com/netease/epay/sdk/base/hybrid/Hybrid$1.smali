.class final Lcom/netease/epay/sdk/base/hybrid/Hybrid$1;
.super Ljava/util/HashMap;
.source "Hybrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/hybrid/Hybrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Class",
        "<+",
        "Lcom/netease/epay/sdk/base/hybrid/HybridHandler;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 44
    const-string v0, "openOuterAPP"

    const-class v1, Lcom/netease/epay/sdk/base/hybrid/handle/OpenOuterAPPHandler;

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/base/hybrid/Hybrid$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "setClipboard"

    const-class v1, Lcom/netease/epay/sdk/base/hybrid/handle/SetClipboardHandler;

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/base/hybrid/Hybrid$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "openEpayApp"

    const-class v1, Lcom/netease/epay/sdk/base/hybrid/handle/OpenEpayAppHandler;

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/base/hybrid/Hybrid$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "showToast"

    const-class v1, Lcom/netease/epay/sdk/base/hybrid/handle/ShowToastHandler;

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/base/hybrid/Hybrid$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "setPageClosePrompt"

    const-class v1, Lcom/netease/epay/sdk/base/hybrid/handle/SetPageClosePromptHandler;

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/base/hybrid/Hybrid$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
