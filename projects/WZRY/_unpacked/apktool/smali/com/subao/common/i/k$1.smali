.class final Lcom/subao/common/i/k$1;
.super Ljava/lang/Object;
.source "MessageUserId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/k;
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
        "Lcom/subao/common/i/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/subao/common/i/k;
    .locals 7

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    .line 34
    sget-object v0, Lcom/subao/common/i/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/i/b;

    move-object v6, v0

    .line 38
    :goto_0
    new-instance v0, Lcom/subao/common/i/k;

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/i/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/subao/common/i/b;)V

    return-object v0

    .line 36
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/subao/common/i/k;
    .locals 1

    .prologue
    .line 42
    new-array v0, p1, [Lcom/subao/common/i/k;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/subao/common/i/k$1;->a(Landroid/os/Parcel;)Lcom/subao/common/i/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/subao/common/i/k$1;->a(I)[Lcom/subao/common/i/k;

    move-result-object v0

    return-object v0
.end method
