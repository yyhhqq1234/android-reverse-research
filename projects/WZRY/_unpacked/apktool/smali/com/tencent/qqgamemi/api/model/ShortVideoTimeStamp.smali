.class public Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;
.super Ljava/lang/Object;
.source "ShortVideoTimeStamp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public endTime:J

.field public priority:Lcom/tencent/qqgamemi/api/TimeStampPriority;

.field public startTime:J

.field public videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp$1;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp$1;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->startTime:J

    .line 22
    iput-wide p3, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->endTime:J

    .line 23
    sget-object v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;->None:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    iput-object v0, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->priority:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 24
    return-void
.end method

.method public constructor <init>(JJILcom/tencent/qqgamemi/api/model/VideoInfo;)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "priorityCode"    # I
    .param p6, "videoInfo"    # Lcom/tencent/qqgamemi/api/model/VideoInfo;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->startTime:J

    .line 35
    iput-wide p3, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->endTime:J

    .line 36
    invoke-static {p5}, Lcom/tencent/qqgamemi/api/TimeStampPriority;->createFromCode(I)Lcom/tencent/qqgamemi/api/TimeStampPriority;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->priority:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 37
    iput-object p6, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;

    .line 38
    return-void
.end method

.method public constructor <init>(JJLcom/tencent/qqgamemi/api/TimeStampPriority;Lcom/tencent/qqgamemi/api/model/VideoInfo;)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "priority"    # Lcom/tencent/qqgamemi/api/TimeStampPriority;
    .param p6, "videoInfo"    # Lcom/tencent/qqgamemi/api/model/VideoInfo;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->startTime:J

    .line 42
    iput-wide p3, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->endTime:J

    .line 43
    iput-object p5, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->priority:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 44
    iput-object p6, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->startTime:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->endTime:J

    .line 50
    const-class v0, Lcom/tencent/qqgamemi/api/model/VideoInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/api/model/VideoInfo;

    iput-object v0, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLcom/tencent/qqgamemi/api/TimeStampPriority;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "priority"    # Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p2, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->startTime:J

    .line 28
    iput-wide p4, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->endTime:J

    .line 29
    iput-object p6, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->priority:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 30
    new-instance v0, Lcom/tencent/qqgamemi/api/model/VideoInfo;

    invoke-direct {v0, p1}, Lcom/tencent/qqgamemi/api/model/VideoInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    iget-wide v0, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    iget-object v0, p0, Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;->videoInfo:Lcom/tencent/qqgamemi/api/model/VideoInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    return-void
.end method
