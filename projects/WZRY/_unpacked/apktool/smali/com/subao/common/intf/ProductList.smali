.class public Lcom/subao/common/intf/ProductList;
.super Ljava/lang/Object;
.source "ProductList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/subao/common/intf/ProductList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/intf/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/subao/common/intf/ProductList$1;

    invoke-direct {v0}, Lcom/subao/common/intf/ProductList$1;-><init>()V

    sput-object v0, Lcom/subao/common/intf/ProductList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 40
    if-gtz v1, :cond_1

    .line 41
    const/4 v0, 0x0

    .line 49
    :cond_0
    iput-object v0, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    .line 50
    return-void

    .line 43
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 45
    new-instance v1, Lcom/subao/common/intf/Product;

    invoke-direct {v1, p1}, Lcom/subao/common/intf/Product;-><init>(Landroid/os/Parcel;)V

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 47
    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/intf/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    .line 35
    return-void
.end method

.method public static createFromJson(Landroid/util/JsonReader;)Lcom/subao/common/intf/ProductList;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 56
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    if-nez v0, :cond_0

    const-string v1, "products"

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p0}, Lcom/subao/common/intf/ProductList;->createListFromJson(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v1

    .line 59
    new-instance v0, Lcom/subao/common/intf/ProductList;

    invoke-direct {v0, v1}, Lcom/subao/common/intf/ProductList;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 65
    return-object v0
.end method

.method private static createListFromJson(Landroid/util/JsonReader;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/intf/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 72
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-static {p0}, Lcom/subao/common/intf/Product;->createFromJson(Landroid/util/JsonReader;)Lcom/subao/common/intf/Product;

    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 77
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    if-eqz p1, :cond_0

    .line 114
    instance-of v2, p1, Lcom/subao/common/intf/ProductList;

    if-eqz v2, :cond_0

    .line 117
    check-cast p1, Lcom/subao/common/intf/ProductList;

    .line 118
    iget-object v2, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    if-nez v2, :cond_3

    .line 119
    iget-object v2, p1, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p1, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    if-nez v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    iget-object v1, p1, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public findByType(I)Lcom/subao/common/intf/Product;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/intf/Product;

    .line 98
    invoke-virtual {v0}, Lcom/subao/common/intf/Product;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 103
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/subao/common/intf/Product;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/intf/Product;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    if-nez v0, :cond_1

    .line 134
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    :cond_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lcom/subao/common/intf/ProductList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/intf/Product;

    .line 138
    invoke-virtual {v0, p1, p2}, Lcom/subao/common/intf/Product;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
