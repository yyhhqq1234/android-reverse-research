.class public Lcom/tencent/midas/api/request/APMidasNetRequest;
.super Lcom/tencent/midas/api/request/APMidasBaseRequest;
.source "APMidasNetRequest.java"


# static fields
.field public static NET_REQ_MP:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x4d7777c4732858b4L


# instance fields
.field public reqType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "mp"

    sput-object v0, Lcom/tencent/midas/api/request/APMidasNetRequest;->NET_REQ_MP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tencent/midas/api/request/APMidasBaseRequest;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasNetRequest;->reqType:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getReqType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasNetRequest;->reqType:Ljava/lang/String;

    return-object v0
.end method

.method public setReqType(Ljava/lang/String;)V
    .locals 0
    .param p1, "reqType"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasNetRequest;->reqType:Ljava/lang/String;

    .line 31
    return-void
.end method
