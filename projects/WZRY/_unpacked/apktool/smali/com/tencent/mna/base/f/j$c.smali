.class public Lcom/tencent/mna/base/f/j$c;
.super Ljava/lang/Object;
.source "NetErrHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Z

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-boolean v2, p0, Lcom/tencent/mna/base/f/j$c;->a:Z

    .line 479
    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->c:J

    .line 480
    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->d:J

    .line 481
    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->e:J

    .line 482
    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->f:J

    .line 483
    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->g:J

    .line 484
    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->h:J

    .line 487
    iput-wide p1, p0, Lcom/tencent/mna/base/f/j$c;->b:J

    .line 488
    iput-boolean v2, p0, Lcom/tencent/mna/base/f/j$c;->a:Z

    .line 490
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mna/base/f/j$c;Lcom/tencent/mna/base/f/j$c;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mna/base/f/j$c;->a:Z

    .line 479
    iput-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->c:J

    .line 480
    iput-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->d:J

    .line 481
    iput-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->e:J

    .line 482
    iput-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->f:J

    .line 483
    iput-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->g:J

    .line 484
    iput-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->h:J

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mna/base/f/j$c;->a:Z

    .line 494
    iget-wide v0, p1, Lcom/tencent/mna/base/f/j$c;->b:J

    iget-wide v2, p2, Lcom/tencent/mna/base/f/j$c;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->b:J

    .line 495
    iget-wide v0, p1, Lcom/tencent/mna/base/f/j$c;->c:J

    iget-wide v2, p2, Lcom/tencent/mna/base/f/j$c;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->c:J

    .line 496
    iget-wide v0, p1, Lcom/tencent/mna/base/f/j$c;->d:J

    iget-wide v2, p2, Lcom/tencent/mna/base/f/j$c;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->d:J

    .line 497
    iget-wide v0, p1, Lcom/tencent/mna/base/f/j$c;->e:J

    iget-wide v2, p2, Lcom/tencent/mna/base/f/j$c;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->e:J

    .line 498
    iget-wide v0, p1, Lcom/tencent/mna/base/f/j$c;->f:J

    iget-wide v2, p2, Lcom/tencent/mna/base/f/j$c;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->f:J

    .line 499
    iget-wide v0, p1, Lcom/tencent/mna/base/f/j$c;->g:J

    iget-wide v2, p2, Lcom/tencent/mna/base/f/j$c;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->g:J

    .line 500
    iget-wide v0, p1, Lcom/tencent/mna/base/f/j$c;->h:J

    iget-wide v2, p2, Lcom/tencent/mna/base/f/j$c;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/base/f/j$c;->h:J

    .line 501
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnmpNetStat{isDif="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mna/base/f/j$c;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noPorts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rcvbufErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sndbufErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inDatagrams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outDatagrams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/base/f/j$c;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
