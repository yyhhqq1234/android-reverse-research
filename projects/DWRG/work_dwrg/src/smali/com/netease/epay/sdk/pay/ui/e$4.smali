.class Lcom/netease/epay/sdk/pay/ui/e$4;
.super Ljava/lang/Object;
.source "FingerprintAuthenticationFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/e;->onAuthenticationFail(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/e;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/e$4;->a:Lcom/netease/epay/sdk/pay/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelayed()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/e$4;->a:Lcom/netease/epay/sdk/pay/ui/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/ui/e;->a(Lcom/netease/epay/sdk/pay/ui/e;Z)V

    .line 101
    return-void
.end method
