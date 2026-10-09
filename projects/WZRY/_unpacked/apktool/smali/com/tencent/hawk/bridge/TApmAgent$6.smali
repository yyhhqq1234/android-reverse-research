.class Lcom/tencent/hawk/bridge/TApmAgent$6;
.super Ljava/lang/Object;
.source "TApmAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/hawk/bridge/TApmAgent;->setUserId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$userid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/hawk/bridge/TApmAgent$6;->val$userid:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tencent/hawk/bridge/TApmAgent$6;->val$userid:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkAgent;->setUserId(Ljava/lang/String;)V

    .line 233
    return-void
.end method
