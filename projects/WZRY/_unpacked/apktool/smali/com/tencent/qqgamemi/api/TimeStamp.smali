.class public Lcom/tencent/qqgamemi/api/TimeStamp;
.super Ljava/lang/Object;
.source "TimeStamp.java"


# instance fields
.field public bgmFilePath:Ljava/lang/String;

.field public endTime:J

.field public priority:Lcom/tencent/qqgamemi/api/TimeStampPriority;

.field public startTime:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->startTime:J

    .line 22
    iput-wide p3, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->endTime:J

    .line 23
    sget-object v0, Lcom/tencent/qqgamemi/api/TimeStampPriority;->None:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    iput-object v0, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->priority:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->title:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/qqgamemi/api/TimeStampPriority;JJ)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "priority"    # Lcom/tencent/qqgamemi/api/TimeStampPriority;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p3, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->startTime:J

    .line 29
    iput-wide p5, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->endTime:J

    .line 30
    iput-object p2, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->priority:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 31
    iput-object p1, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->title:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/qqgamemi/api/TimeStampPriority;JJLjava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "priority"    # Lcom/tencent/qqgamemi/api/TimeStampPriority;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "bgmFilePath"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p3, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->startTime:J

    .line 36
    iput-wide p5, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->endTime:J

    .line 37
    iput-object p2, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->priority:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    .line 38
    iput-object p1, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->title:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/tencent/qqgamemi/api/TimeStamp;->bgmFilePath:Ljava/lang/String;

    .line 40
    return-void
.end method
