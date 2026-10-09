.class public Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;
.super Ljava/lang/Object;
.source "APMidasBaseRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/midas/api/request/APMidasBaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APMidasExtendInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4ac5e85337650f74L


# instance fields
.field public isShowListOtherNum:Z

.field public isShowNum:Z

.field final synthetic this$0:Lcom/tencent/midas/api/request/APMidasBaseRequest;

.field public unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
    .locals 2
    .param p1, "this$0"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    const/4 v1, 0x1

    .line 373
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->this$0:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->unit:Ljava/lang/String;

    .line 375
    iput-boolean v1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowNum:Z

    .line 376
    iput-boolean v1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowListOtherNum:Z

    .line 377
    return-void
.end method
