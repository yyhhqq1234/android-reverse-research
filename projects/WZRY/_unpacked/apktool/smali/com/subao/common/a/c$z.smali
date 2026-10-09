.class Lcom/subao/common/a/c$z;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "z"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/intf/VPNStateListener;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/subao/common/intf/VPNStateListener;Z)V
    .locals 0

    .prologue
    .line 2554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2555
    iput-object p1, p0, Lcom/subao/common/a/c$z;->a:Lcom/subao/common/intf/VPNStateListener;

    .line 2556
    iput-boolean p2, p0, Lcom/subao/common/a/c$z;->b:Z

    .line 2557
    return-void
.end method

.method static a(Lcom/subao/common/intf/VPNStateListener;Z)V
    .locals 2

    .prologue
    .line 2560
    if-nez p0, :cond_0

    .line 2568
    :goto_0
    return-void

    .line 2563
    :cond_0
    invoke-static {}, Lcom/subao/common/n/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2564
    invoke-interface {p0, p1}, Lcom/subao/common/intf/VPNStateListener;->onVPNStateChanged(Z)V

    goto :goto_0

    .line 2566
    :cond_1
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v0

    new-instance v1, Lcom/subao/common/a/c$z;

    invoke-direct {v1, p0, p1}, Lcom/subao/common/a/c$z;-><init>(Lcom/subao/common/intf/VPNStateListener;Z)V

    invoke-interface {v0, v1}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/subao/common/a/c$z;->a:Lcom/subao/common/intf/VPNStateListener;

    iget-boolean v1, p0, Lcom/subao/common/a/c$z;->b:Z

    invoke-interface {v0, v1}, Lcom/subao/common/intf/VPNStateListener;->onVPNStateChanged(Z)V

    .line 2573
    return-void
.end method
