.class Lcom/tencent/gcloud/map/MapUIService$1;
.super Ljava/lang/Object;
.source "MapUIService.java"

# interfaces
.implements Lcom/tencent/friday/uikit/IFridayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/map/MapUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/map/MapUIService;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/map/MapUIService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/gcloud/map/MapUIService$1;->this$0:Lcom/tencent/gcloud/map/MapUIService;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback([B[B)V
    .locals 3
    .param p1, "action"    # [B
    .param p2, "parameter"    # [B

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "actionLength":I
    if-eqz p1, :cond_0

    .line 54
    array-length v0, p1

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    .local v1, "parameterLength":I
    if-eqz p2, :cond_1

    .line 59
    array-length v1, p2

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/tencent/gcloud/map/MapUIService$1;->this$0:Lcom/tencent/gcloud/map/MapUIService;

    invoke-static {v2, p1, v0, p2, v1}, Lcom/tencent/gcloud/map/MapUIService;->access$0(Lcom/tencent/gcloud/map/MapUIService;[BI[BI)V

    .line 62
    return-void
.end method

.method public onSceneStatusChange(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 69
    return-void
.end method
