.class abstract Lcom/subao/common/i/h$a$b;
.super Lcom/subao/common/i/h$a$a;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lcom/subao/common/i/h$a;

.field private final d:I

.field private final e:Z

.field private f:J

.field private g:I


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 570
    const-wide/16 v4, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/i/h$a$b;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;IJ)V

    .line 571
    return-void
.end method

.method constructor <init>(Lcom/subao/common/i/h$a;Ljava/lang/String;IJ)V
    .locals 8

    .prologue
    .line 574
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/i/h$a$b;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;IJZ)V

    .line 575
    return-void
.end method

.method constructor <init>(Lcom/subao/common/i/h$a;Ljava/lang/String;IJZ)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/subao/common/i/h$a$b;->c:Lcom/subao/common/i/h$a;

    .line 578
    invoke-direct {p0, p1, p2}, Lcom/subao/common/i/h$a$a;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;)V

    .line 579
    iput p3, p0, Lcom/subao/common/i/h$a$b;->d:I

    .line 580
    iput-wide p4, p0, Lcom/subao/common/i/h$a$b;->f:J

    .line 581
    iput-boolean p6, p0, Lcom/subao/common/i/h$a$b;->e:Z

    .line 582
    return-void
.end method


# virtual methods
.method protected a(Lcom/subao/common/j/a$c;)V
    .locals 2

    .prologue
    .line 606
    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/subao/common/i/h$a$b;->f()Z

    .line 609
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/subao/common/i/h$a$b;->f()Z

    .line 602
    return-void
.end method

.method final f()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 585
    iget v2, p0, Lcom/subao/common/i/h$a$b;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/subao/common/i/h$a$b;->g:I

    .line 586
    iget v2, p0, Lcom/subao/common/i/h$a$b;->g:I

    iget v3, p0, Lcom/subao/common/i/h$a$b;->d:I

    if-gt v2, v3, :cond_2

    .line 587
    iget-wide v2, p0, Lcom/subao/common/i/h$a$b;->f:J

    invoke-virtual {p0, v2, v3}, Lcom/subao/common/i/h$a$b;->a(J)V

    .line 588
    iget-boolean v2, p0, Lcom/subao/common/i/h$a$b;->e:Z

    if-eqz v2, :cond_0

    .line 589
    iget-wide v2, p0, Lcom/subao/common/i/h$a$b;->f:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/subao/common/i/h$a$b;->f:J

    .line 591
    :cond_0
    const-string v2, "SubaoMessage"

    invoke-static {v2}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    const-string v2, "SubaoMessage"

    sget-object v3, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v4, "[%s] retry after %d milliseconds (%d/%d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/subao/common/i/h$a$b;->a:Ljava/lang/String;

    aput-object v6, v5, v1

    iget-wide v6, p0, Lcom/subao/common/i/h$a$b;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    iget v6, p0, Lcom/subao/common/i/h$a$b;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    iget v6, p0, Lcom/subao/common/i/h$a$b;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
