.class final Lcom/subao/common/b/k$1;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/k;
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
        "Lcom/subao/common/b/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/subao/common/b/k;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/subao/common/b/k;

    invoke-direct {v0, p1}, Lcom/subao/common/b/k;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/subao/common/b/k;
    .locals 1

    .prologue
    .line 29
    new-array v0, p1, [Lcom/subao/common/b/k;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/subao/common/b/k$1;->a(Landroid/os/Parcel;)Lcom/subao/common/b/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/subao/common/b/k$1;->a(I)[Lcom/subao/common/b/k;

    move-result-object v0

    return-object v0
.end method
