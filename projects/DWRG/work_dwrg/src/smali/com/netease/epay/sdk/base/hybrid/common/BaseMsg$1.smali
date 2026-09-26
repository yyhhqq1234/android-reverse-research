.class final Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg$1;
.super Ljava/lang/Object;
.source "BaseMsg.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 43
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;

    invoke-direct {v0, p1}, Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    new-array v0, p1, [Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg$1;->newArray(I)[Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;

    move-result-object v0

    return-object v0
.end method
