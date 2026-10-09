.class public Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;
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
    name = "APMidasMPInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8c21fb381b55110L


# instance fields
.field public discountType:Ljava/lang/String;

.field public discountUrl:Ljava/lang/String;

.field public discoutId:Ljava/lang/String;

.field public drmInfo:Ljava/lang/String;

.field public extras:Ljava/lang/String;

.field public payChannel:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/midas/api/request/APMidasBaseRequest;


# direct methods
.method public constructor <init>(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
    .locals 1
    .param p1, "this$0"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->this$0:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    .line 410
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discoutId:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->extras:Ljava/lang/String;

    .line 415
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->payChannel:Ljava/lang/String;

    .line 416
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountType:Ljava/lang/String;

    .line 417
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountUrl:Ljava/lang/String;

    .line 418
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    .line 419
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discoutId:Ljava/lang/String;

    .line 420
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->extras:Ljava/lang/String;

    .line 421
    return-void
.end method
