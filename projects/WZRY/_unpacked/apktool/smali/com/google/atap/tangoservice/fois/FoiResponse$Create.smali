.class public Lcom/google/atap/tangoservice/fois/FoiResponse$Create;
.super Lcom/google/atap/tangoservice/fois/FoiResponse;
.source "FoiResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/fois/FoiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Create"
.end annotation


# instance fields
.field public mFrameId:Ljava/lang/String;

.field public mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    sget-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->CREATE:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    invoke-direct {p0, v0, v1}, Lcom/google/atap/tangoservice/fois/FoiResponse;-><init>(Lcom/google/atap/tangoservice/fois/FoiRequest$Type;Lcom/google/atap/tangoservice/fois/FoiResponse$1;)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mStatus:I

    .line 100
    iput-object v1, p0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mFrameId:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 107
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;

    if-eq v2, v3, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 110
    check-cast v0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;

    .line 111
    .local v0, "other":Lcom/google/atap/tangoservice/fois/FoiResponse$Create;
    iget-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mType:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    iget-object v3, v0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mType:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mId:Ljava/lang/String;

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    iget v2, p0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mStatus:I

    iget v3, v0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mStatus:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mFrameId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mFrameId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mFrameId:Ljava/lang/String;

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 112
    :cond_2
    iget-object v2, v0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mId:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    .line 114
    :cond_3
    iget-object v2, v0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mFrameId:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_2
.end method

.method protected parcelRead(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mStatus:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mFrameId:Ljava/lang/String;

    .line 121
    return-void
.end method

.method protected parcelWrite(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 124
    iget v0, p0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mFrameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return-void
.end method
