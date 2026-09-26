.class public Lcom/netease/epay/sdk/model/RegisterData;
.super Ljava/lang/Object;
.source "RegisterData.java"


# instance fields
.field public accountId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accountId"
    .end annotation
.end field

.field public sessionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sessionId"
    .end annotation
.end field

.field public shortPwdEncodeFactor:Lcom/netease/epay/sdk/model/ShortPwdEncodeFactor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortPwdEncodeFactor"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
