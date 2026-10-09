.class final Lcom/tencent/msdk/notice/NoticeInfo$1;
.super Ljava/lang/Object;
.source "NoticeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/notice/NoticeInfo;
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
        "Lcom/tencent/msdk/notice/NoticeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/msdk/notice/NoticeInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Lcom/tencent/msdk/notice/NoticeInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/notice/NoticeInfo;-><init>()V

    .line 116
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/msdk/notice/NoticeInfo;

    invoke-direct {v0, p1}, Lcom/tencent/msdk/notice/NoticeInfo;-><init>(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/notice/NoticeInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/msdk/notice/NoticeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/msdk/notice/NoticeInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 107
    new-array v0, p1, [Lcom/tencent/msdk/notice/NoticeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/notice/NoticeInfo$1;->newArray(I)[Lcom/tencent/msdk/notice/NoticeInfo;

    move-result-object v0

    return-object v0
.end method
