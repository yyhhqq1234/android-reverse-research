.class final Lcom/subao/common/intf/UserInfo$1;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/intf/UserInfo;
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
        "Lcom/subao/common/intf/UserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/subao/common/intf/UserInfo;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/subao/common/intf/UserInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/subao/common/intf/UserInfo;-><init>(Landroid/os/Parcel;Lcom/subao/common/intf/UserInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/subao/common/intf/UserInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/subao/common/intf/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/subao/common/intf/UserInfo;
    .locals 1

    .prologue
    .line 28
    new-array v0, p1, [Lcom/subao/common/intf/UserInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/subao/common/intf/UserInfo$1;->newArray(I)[Lcom/subao/common/intf/UserInfo;

    move-result-object v0

    return-object v0
.end method
