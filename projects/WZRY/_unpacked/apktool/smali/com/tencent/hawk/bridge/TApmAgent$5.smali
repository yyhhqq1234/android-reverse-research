.class Lcom/tencent/hawk/bridge/TApmAgent$5;
.super Ljava/lang/Object;
.source "TApmAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/hawk/bridge/TApmAgent;->markLevelFin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 216
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->markLevelFin()V

    .line 217
    return-void
.end method
