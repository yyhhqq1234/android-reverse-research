.class public final Lcom/tencent/tmsecurelite/commom/DataEntity;
.super Lorg/json/JSONObject;
.source "DataEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/tmsecurelite/commom/DataEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/tencent/tmsecurelite/commom/DataEntity$1;

    invoke-direct {v0}, Lcom/tencent/tmsecurelite/commom/DataEntity$1;-><init>()V

    sput-object v0, Lcom/tencent/tmsecurelite/commom/DataEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static readDataFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmsecurelite/commom/DataEntity;
    .locals 3
    .param p0, "src"    # Landroid/os/Parcel;

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    .local v1, "result":Lcom/tencent/tmsecurelite/commom/DataEntity;
    :try_start_0
    new-instance v2, Lcom/tencent/tmsecurelite/commom/DataEntity;

    invoke-direct {v2, p0}, Lcom/tencent/tmsecurelite/commom/DataEntity;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "result":Lcom/tencent/tmsecurelite/commom/DataEntity;
    .local v2, "result":Lcom/tencent/tmsecurelite/commom/DataEntity;
    move-object v1, v2

    .line 57
    .end local v2    # "result":Lcom/tencent/tmsecurelite/commom/DataEntity;
    .restart local v1    # "result":Lcom/tencent/tmsecurelite/commom/DataEntity;
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "src"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecurelite/commom/DataEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecurelite/commom/DataEntity;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 35
    .local v3, "size":I
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 42
    .end local v1    # "i":I
    .end local v3    # "size":I
    :goto_1
    return-object v2

    .line 37
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_0
    new-instance v4, Lcom/tencent/tmsecurelite/commom/DataEntity;

    invoke-direct {v4, p0}, Lcom/tencent/tmsecurelite/commom/DataEntity;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeToParcel(Lcom/tencent/tmsecurelite/commom/DataEntity;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "data"    # Lcom/tencent/tmsecurelite/commom/DataEntity;
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tmsecurelite/commom/DataEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    return-void
.end method

.method public static writeToParcel(Ljava/util/List;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecurelite/commom/DataEntity;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/tmsecurelite/commom/DataEntity;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    return-void

    .line 67
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecurelite/commom/DataEntity;

    .line 68
    .local v0, "entity":Lcom/tencent/tmsecurelite/commom/DataEntity;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/tencent/tmsecurelite/commom/DataEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/tencent/tmsecurelite/commom/DataEntity;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return-void
.end method
