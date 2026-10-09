.class public Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;
.super Ljava/lang/Object;
.source "CollectionVideoTimeStamp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public timePairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/model/TimePair;",
            ">;"
        }
    .end annotation
.end field

.field public videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp$1;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp$1;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/tencent/qqgamemi/api/model/TimePair;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;->timePairs:Ljava/util/List;

    .line 31
    const-class v0, Lcom/tencent/qqgamemi/api/model/VideoInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/api/model/VideoInfo;

    iput-object v0, p0, Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;->videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;

    .line 32
    return-void
.end method

.method public constructor <init>([Lcom/tencent/qqgamemi/api/model/TimePair;Lcom/tencent/qqgamemi/api/model/VideoInfo;)V
    .locals 4
    .param p1, "timePairs"    # [Lcom/tencent/qqgamemi/api/model/TimePair;
    .param p2, "videoInfo"    # Lcom/tencent/qqgamemi/api/model/VideoInfo;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v1, "model"

    const-string v2, "CollectionTimeStamp ctor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;->timePairs:Ljava/util/List;

    .line 22
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 23
    .local v0, "timePair":Lcom/tencent/qqgamemi/api/model/TimePair;
    iget-object v3, p0, Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;->timePairs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    .end local v0    # "timePair":Lcom/tencent/qqgamemi/api/model/TimePair;
    :cond_0
    iput-object p2, p0, Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;->videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;->timePairs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 37
    iget-object v0, p0, Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;->videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 38
    return-void
.end method
