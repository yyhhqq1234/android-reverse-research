.class public Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;
.super Ljava/lang/Object;
.source "TangoAreaDescriptionMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DATE_MS_SINCE_EPOCH:Ljava/lang/String; = "date_ms_since_epoch"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_TRANSFORMATION:Ljava/lang/String; = "transformation"

.field public static final KEY_UUID:Ljava/lang/String; = "id"


# instance fields
.field private data:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData$1;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData$1;-><init>()V

    sput-object v0, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;->data:Landroid/os/Bundle;

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;->data:Landroid/os/Bundle;

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;->readFromParcel(Landroid/os/Parcel;)V

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;->data:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, "entriesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 142
    .local v3, "value":[B
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 143
    iget-object v4, p0, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;->data:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":[B
    :cond_1
    return-void
.end method

.method public set(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 111
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 157
    iget-object v3, p0, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;->data:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 158
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;->data:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 162
    .local v2, "value":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 164
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":[B
    :cond_0
    return-void
.end method
