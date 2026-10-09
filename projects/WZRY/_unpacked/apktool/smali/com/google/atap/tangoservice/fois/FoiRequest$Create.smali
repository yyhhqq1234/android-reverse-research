.class public Lcom/google/atap/tangoservice/fois/FoiRequest$Create;
.super Lcom/google/atap/tangoservice/fois/FoiRequest;
.source "FoiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/fois/FoiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Create"
.end annotation


# instance fields
.field public mBaseFrameId:Ljava/lang/String;

.field public mTimestamp:D

.field public mTransformation:Lcom/google/atap/tangoservice/TangoTransformation;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-object v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->CREATE:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    invoke-direct {p0, v0, v2}, Lcom/google/atap/tangoservice/fois/FoiRequest;-><init>(Lcom/google/atap/tangoservice/fois/FoiRequest$Type;Lcom/google/atap/tangoservice/fois/FoiRequest$1;)V

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTimestamp:D

    .line 120
    iput-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mBaseFrameId:Ljava/lang/String;

    .line 121
    iput-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTransformation:Lcom/google/atap/tangoservice/TangoTransformation;

    .line 125
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 128
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;

    if-eq v2, v3, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 131
    check-cast v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;

    .line 132
    .local v0, "other":Lcom/google/atap/tangoservice/fois/FoiRequest$Create;
    iget-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mType:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    iget-object v3, v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mType:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mId:Ljava/lang/String;

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    iget-wide v2, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTimestamp:D

    iget-wide v4, v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTimestamp:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mBaseFrameId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mBaseFrameId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mBaseFrameId:Ljava/lang/String;

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_2
    iget-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTransformation:Lcom/google/atap/tangoservice/TangoTransformation;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTransformation:Lcom/google/atap/tangoservice/TangoTransformation;

    iget-object v3, v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTransformation:Lcom/google/atap/tangoservice/TangoTransformation;

    .line 138
    invoke-virtual {v2, v3}, Lcom/google/atap/tangoservice/TangoTransformation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_3
    const/4 v1, 0x1

    goto :goto_0

    .line 133
    :cond_2
    iget-object v2, v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mId:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    .line 135
    :cond_3
    iget-object v2, v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mBaseFrameId:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_2

    .line 138
    :cond_4
    iget-object v2, v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTransformation:Lcom/google/atap/tangoservice/TangoTransformation;

    if-nez v2, :cond_0

    goto :goto_3
.end method

.method protected parcelRead(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTimestamp:D

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mBaseFrameId:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/google/atap/tangoservice/TangoTransformation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/atap/tangoservice/TangoTransformation;

    iput-object v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTransformation:Lcom/google/atap/tangoservice/TangoTransformation;

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTransformation:Lcom/google/atap/tangoservice/TangoTransformation;

    goto :goto_0
.end method

.method protected parcelWrite(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-wide v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTimestamp:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 154
    iget-object v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mBaseFrameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTransformation:Lcom/google/atap/tangoservice/TangoTransformation;

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTransformation:Lcom/google/atap/tangoservice/TangoTransformation;

    invoke-virtual {v0, p1, v2}, Lcom/google/atap/tangoservice/TangoTransformation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
