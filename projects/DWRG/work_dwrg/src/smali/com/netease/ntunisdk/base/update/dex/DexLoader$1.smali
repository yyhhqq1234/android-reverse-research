.class final Lcom/netease/ntunisdk/base/update/dex/DexLoader$1;
.super Ljava/lang/Object;
.source "DexLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/update/common/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/update/dex/DexLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-static {p1}, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->access$000(I)V

    .line 89
    return-void
.end method
