.class public Lcom/netease/epay/sdk/base/event/EACSuccessEvent;
.super Ljava/lang/Object;
.source "EACSuccessEvent.java"


# instance fields
.field public quickPayId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "quickPayId"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/netease/epay/sdk/base/event/EACSuccessEvent;->quickPayId:Ljava/lang/String;

    .line 14
    return-void
.end method
