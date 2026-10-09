.class final Lcom/tencent/msdk/communicator/MHttpResponse$1;
.super Ljava/lang/Object;
.source "MHttpResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/communicator/MHttpResponse;
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
        "Lcom/tencent/msdk/communicator/MHttpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/msdk/communicator/MHttpResponse;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    new-instance v0, Lcom/tencent/msdk/communicator/MHttpResponse;

    invoke-direct {v0, p1}, Lcom/tencent/msdk/communicator/MHttpResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/communicator/MHttpResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/msdk/communicator/MHttpResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 38
    new-array v0, p1, [Lcom/tencent/msdk/communicator/MHttpResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/communicator/MHttpResponse$1;->newArray(I)[Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v0

    return-object v0
.end method
