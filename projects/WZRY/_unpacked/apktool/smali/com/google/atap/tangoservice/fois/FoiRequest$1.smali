.class final Lcom/google/atap/tangoservice/fois/FoiRequest$1;
.super Ljava/lang/Object;
.source "FoiRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/fois/FoiRequest;
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
        "Lcom/google/atap/tangoservice/fois/FoiRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/atap/tangoservice/fois/FoiRequest;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->fromInt(I)Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    move-result-object v2

    .line 49
    .local v2, "type":Lcom/google/atap/tangoservice/fois/FoiRequest$Type;
    if-nez v2, :cond_0

    move-object v1, v3

    .line 73
    :goto_0
    return-object v1

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, v3

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x0

    .line 57
    .local v1, "result":Lcom/google/atap/tangoservice/fois/FoiRequest;
    sget-object v4, Lcom/google/atap/tangoservice/fois/FoiRequest$2;->$SwitchMap$com$google$atap$tangoservice$fois$FoiRequest$Type:[I

    invoke-virtual {v2}, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object v1, v3

    .line 68
    goto :goto_0

    .line 59
    :pswitch_0
    new-instance v1, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;

    .end local v1    # "result":Lcom/google/atap/tangoservice/fois/FoiRequest;
    invoke-direct {v1}, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;-><init>()V

    .line 70
    .restart local v1    # "result":Lcom/google/atap/tangoservice/fois/FoiRequest;
    :goto_1
    iput-object v2, v1, Lcom/google/atap/tangoservice/fois/FoiRequest;->mType:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    .line 71
    iput-object v0, v1, Lcom/google/atap/tangoservice/fois/FoiRequest;->mId:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, p1}, Lcom/google/atap/tangoservice/fois/FoiRequest;->parcelRead(Landroid/os/Parcel;)V

    goto :goto_0

    .line 62
    :pswitch_1
    new-instance v1, Lcom/google/atap/tangoservice/fois/FoiRequest$Load;

    .end local v1    # "result":Lcom/google/atap/tangoservice/fois/FoiRequest;
    invoke-direct {v1}, Lcom/google/atap/tangoservice/fois/FoiRequest$Load;-><init>()V

    .line 63
    .restart local v1    # "result":Lcom/google/atap/tangoservice/fois/FoiRequest;
    goto :goto_1

    .line 65
    :pswitch_2
    new-instance v1, Lcom/google/atap/tangoservice/fois/FoiRequest$Delete;

    .end local v1    # "result":Lcom/google/atap/tangoservice/fois/FoiRequest;
    invoke-direct {v1}, Lcom/google/atap/tangoservice/fois/FoiRequest$Delete;-><init>()V

    .line 66
    .restart local v1    # "result":Lcom/google/atap/tangoservice/fois/FoiRequest;
    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/fois/FoiRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/atap/tangoservice/fois/FoiRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/atap/tangoservice/fois/FoiRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 78
    new-array v0, p1, [Lcom/google/atap/tangoservice/fois/FoiRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/fois/FoiRequest$1;->newArray(I)[Lcom/google/atap/tangoservice/fois/FoiRequest;

    move-result-object v0

    return-object v0
.end method
