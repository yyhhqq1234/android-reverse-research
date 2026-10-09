.class Lcom/tencent/hawk/bridge/TApmAgent$2;
.super Ljava/lang/Object;
.source "TApmAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/hawk/bridge/TApmAgent;->initHawk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$localContext:Landroid/content/Context;

.field private final synthetic val$renderer:Ljava/lang/String;

.field private final synthetic val$vendror:Ljava/lang/String;

.field private final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/hawk/bridge/TApmAgent$2;->val$localContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/hawk/bridge/TApmAgent$2;->val$vendror:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/hawk/bridge/TApmAgent$2;->val$renderer:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/hawk/bridge/TApmAgent$2;->val$version:Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 176
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkAgent;->setBuildEnv(I)V

    .line 177
    iget-object v0, p0, Lcom/tencent/hawk/bridge/TApmAgent$2;->val$localContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/hawk/bridge/TApmAgent$2;->val$vendror:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/hawk/bridge/TApmAgent$2;->val$renderer:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/hawk/bridge/TApmAgent$2;->val$version:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/hawk/bridge/HawkAgent;->hawkInitForCocos(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method
