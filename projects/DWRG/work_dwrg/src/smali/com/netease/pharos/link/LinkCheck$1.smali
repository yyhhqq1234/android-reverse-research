.class Lcom/netease/pharos/link/LinkCheck$1;
.super Ljava/util/TimerTask;
.source "LinkCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/link/LinkCheck;->kcpCheck(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/link/LinkCheck;

.field private final synthetic val$client:Lcom/netease/pharos/link/kcp/KcpJavaClient;


# direct methods
.method constructor <init>(Lcom/netease/pharos/link/LinkCheck;Lcom/netease/pharos/link/kcp/KcpJavaClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/link/LinkCheck$1;->this$0:Lcom/netease/pharos/link/LinkCheck;

    iput-object p2, p0, Lcom/netease/pharos/link/LinkCheck$1;->val$client:Lcom/netease/pharos/link/kcp/KcpJavaClient;

    .line 480
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 485
    .local v0, "current":J
    iget-object v2, p0, Lcom/netease/pharos/link/LinkCheck$1;->val$client:Lcom/netease/pharos/link/kcp/KcpJavaClient;

    invoke-virtual {v2, v0, v1}, Lcom/netease/pharos/link/kcp/KcpJavaClient;->Update(J)V

    .line 487
    return-void
.end method
