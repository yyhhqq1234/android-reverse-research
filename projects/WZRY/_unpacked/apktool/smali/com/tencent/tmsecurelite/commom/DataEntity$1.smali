.class Lcom/tencent/tmsecurelite/commom/DataEntity$1;
.super Ljava/lang/Object;
.source "DataEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecurelite/commom/DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/tmsecurelite/commom/DataEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmsecurelite/commom/DataEntity;
    .locals 2
    .param p1, "arg0"    # Landroid/os/Parcel;

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Lcom/tencent/tmsecurelite/commom/DataEntity;

    invoke-direct {v1, p1}, Lcom/tencent/tmsecurelite/commom/DataEntity;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 96
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/tmsecurelite/commom/DataEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmsecurelite/commom/DataEntity;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/tmsecurelite/commom/DataEntity;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 101
    new-array v0, p1, [Lcom/tencent/tmsecurelite/commom/DataEntity;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/tmsecurelite/commom/DataEntity$1;->newArray(I)[Lcom/tencent/tmsecurelite/commom/DataEntity;

    move-result-object v0

    return-object v0
.end method
