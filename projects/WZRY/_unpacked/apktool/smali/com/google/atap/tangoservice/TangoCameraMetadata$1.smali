.class final Lcom/google/atap/tangoservice/TangoCameraMetadata$1;
.super Ljava/lang/Object;
.source "TangoCameraMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/TangoCameraMetadata;
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
        "Lcom/google/atap/tangoservice/TangoCameraMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/atap/tangoservice/TangoCameraMetadata;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    new-instance v0, Lcom/google/atap/tangoservice/TangoCameraMetadata;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoCameraMetadata;-><init>()V

    .line 50
    .local v0, "tangoCameraMetadata":Lcom/google/atap/tangoservice/TangoCameraMetadata;
    invoke-virtual {v0, p1}, Lcom/google/atap/tangoservice/TangoCameraMetadata;->readFromParcel(Landroid/os/Parcel;)V

    .line 51
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/TangoCameraMetadata$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/atap/tangoservice/TangoCameraMetadata;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/atap/tangoservice/TangoCameraMetadata;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 55
    new-array v0, p1, [Lcom/google/atap/tangoservice/TangoCameraMetadata;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/TangoCameraMetadata$1;->newArray(I)[Lcom/google/atap/tangoservice/TangoCameraMetadata;

    move-result-object v0

    return-object v0
.end method
