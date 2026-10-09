.class final Lcom/tencent/qqgamemi/api/model/VideoInfo$1;
.super Ljava/lang/Object;
.source "VideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/api/model/VideoInfo;
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
        "Lcom/tencent/qqgamemi/api/model/VideoInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/qqgamemi/api/model/VideoInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    new-instance v0, Lcom/tencent/qqgamemi/api/model/VideoInfo;

    invoke-direct {v0, p1}, Lcom/tencent/qqgamemi/api/model/VideoInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/tencent/qqgamemi/api/model/VideoInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/qqgamemi/api/model/VideoInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/qqgamemi/api/model/VideoInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 47
    new-array v0, p1, [Lcom/tencent/qqgamemi/api/model/VideoInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/tencent/qqgamemi/api/model/VideoInfo$1;->newArray(I)[Lcom/tencent/qqgamemi/api/model/VideoInfo;

    move-result-object v0

    return-object v0
.end method
