.class Lcom/subao/common/a/c$n;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "n"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/intf/AccelSwitchListener;


# direct methods
.method constructor <init>(Lcom/subao/common/intf/AccelSwitchListener;)V
    .locals 0

    .prologue
    .line 1847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1848
    iput-object p1, p0, Lcom/subao/common/a/c$n;->a:Lcom/subao/common/intf/AccelSwitchListener;

    .line 1849
    return-void
.end method

.method static a(Lcom/subao/common/intf/AccelSwitchListener;)V
    .locals 2

    .prologue
    .line 1852
    new-instance v0, Lcom/subao/common/a/c$n;

    invoke-direct {v0, p0}, Lcom/subao/common/a/c$n;-><init>(Lcom/subao/common/intf/AccelSwitchListener;)V

    .line 1853
    invoke-static {}, Lcom/subao/common/n/i;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1854
    invoke-virtual {v0}, Lcom/subao/common/a/c$n;->run()V

    .line 1858
    :goto_0
    return-void

    .line 1856
    :cond_0
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/subao/common/a/c$n;->a:Lcom/subao/common/intf/AccelSwitchListener;

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/subao/common/a/c$n;->a:Lcom/subao/common/intf/AccelSwitchListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/subao/common/intf/AccelSwitchListener;->onAccelSwitch(Z)V

    .line 1865
    :cond_0
    invoke-static {}, Lcom/subao/common/a/c$w;->b()V

    .line 1866
    return-void
.end method
