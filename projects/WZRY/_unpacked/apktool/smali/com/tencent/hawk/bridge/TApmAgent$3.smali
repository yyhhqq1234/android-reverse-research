.class Lcom/tencent/hawk/bridge/TApmAgent$3;
.super Ljava/lang/Object;
.source "TApmAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/hawk/bridge/TApmAgent;->markLevelLoad(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$paramString:Ljava/lang/String;

.field private final synthetic val$quality:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/hawk/bridge/TApmAgent$3;->val$paramString:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/hawk/bridge/TApmAgent$3;->val$quality:I

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/tencent/hawk/bridge/TApmAgent$3;->val$paramString:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/hawk/bridge/TApmAgent$3;->val$quality:I

    invoke-static {v0, v1}, Lcom/tencent/hawk/bridge/HawkAgent;->markLevelLoad(Ljava/lang/String;I)V

    .line 195
    return-void
.end method
