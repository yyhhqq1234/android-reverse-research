.class public Lcom/netease/epay/sdk/base/hybrid/common/Message;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public msg:Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public platformId:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public v:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
