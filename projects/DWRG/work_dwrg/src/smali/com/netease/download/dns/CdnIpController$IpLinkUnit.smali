.class public Lcom/netease/download/dns/CdnIpController$IpLinkUnit;
.super Ljava/lang/Object;
.source "CdnIpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/dns/CdnIpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IpLinkUnit"
.end annotation


# instance fields
.field public mIp:Ljava/lang/String;

.field public mLinkCount:I

.field final synthetic this$0:Lcom/netease/download/dns/CdnIpController;


# direct methods
.method public constructor <init>(Lcom/netease/download/dns/CdnIpController;Ljava/lang/String;)V
    .locals 1
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->this$0:Lcom/netease/download/dns/CdnIpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mIp:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mLinkCount:I

    .line 418
    iput-object p2, p0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mIp:Ljava/lang/String;

    .line 419
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mIp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLinkCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mLinkCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
