.class final Lcom/subao/common/intf/ProductList$1;
.super Ljava/lang/Object;
.source "ProductList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/intf/ProductList;
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
        "Lcom/subao/common/intf/ProductList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/subao/common/intf/ProductList;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/subao/common/intf/ProductList;

    invoke-direct {v0, p1}, Lcom/subao/common/intf/ProductList;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/subao/common/intf/ProductList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/subao/common/intf/ProductList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/subao/common/intf/ProductList;
    .locals 1

    .prologue
    .line 27
    new-array v0, p1, [Lcom/subao/common/intf/ProductList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/subao/common/intf/ProductList$1;->newArray(I)[Lcom/subao/common/intf/ProductList;

    move-result-object v0

    return-object v0
.end method
