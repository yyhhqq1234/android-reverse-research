.class public Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;
.super Ljava/lang/Object;
.source "QueryBizPrecheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;
    }
.end annotation


# instance fields
.field public preCheckList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
