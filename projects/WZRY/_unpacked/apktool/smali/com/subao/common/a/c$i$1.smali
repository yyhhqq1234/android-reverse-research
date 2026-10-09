.class final Lcom/subao/common/a/c$i$1;
.super Ljava/lang/Thread;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/a/c$i;->a(Lcom/subao/common/g/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2308
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2311
    invoke-static {v0, v0}, Lcom/subao/vpn/VPNJni;->proxyLoop(IZ)V

    .line 2312
    return-void
.end method
