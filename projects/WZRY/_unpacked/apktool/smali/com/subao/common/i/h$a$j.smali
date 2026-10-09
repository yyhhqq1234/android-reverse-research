.class Lcom/subao/common/i/h$a$j;
.super Lcom/subao/common/i/h$a$a;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic c:Lcom/subao/common/i/h$a;

.field private final d:Lcom/subao/common/i/o;

.field private e:I


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;Lcom/subao/common/i/o;)V
    .locals 1

    .prologue
    .line 506
    iput-object p1, p0, Lcom/subao/common/i/h$a$j;->c:Lcom/subao/common/i/h$a;

    .line 507
    const-string v0, "Installation"

    invoke-direct {p0, p1, v0}, Lcom/subao/common/i/h$a$a;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;)V

    .line 504
    const/16 v0, 0xa

    iput v0, p0, Lcom/subao/common/i/h$a$j;->e:I

    .line 508
    iput-object p2, p0, Lcom/subao/common/i/h$a$j;->d:Lcom/subao/common/i/o;

    .line 509
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    .line 545
    iget v0, p0, Lcom/subao/common/i/h$a$j;->e:I

    const/16 v1, 0x140

    if-gt v0, v1, :cond_1

    .line 546
    const-string v0, "SubaoMessage"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const-string v0, "SubaoMessage"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "Installation message post failed, retry after %d seconds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/subao/common/i/h$a$j;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    iget v0, p0, Lcom/subao/common/i/h$a$j;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/subao/common/i/h$a$j;->a(J)V

    .line 550
    iget v0, p0, Lcom/subao/common/i/h$a$j;->e:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/subao/common/i/h$a$j;->e:I

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_1
    const-string v0, "SubaoMessage"

    const-string v1, "Retry stopped"

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/subao/common/j/a$c;)V
    .locals 3

    .prologue
    .line 528
    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 531
    :sswitch_0
    iget-object v0, p1, Lcom/subao/common/j/a$c;->b:[B

    invoke-static {v0}, Lcom/subao/common/i/e;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_0

    .line 533
    iget-object v1, p0, Lcom/subao/common/i/h$a$j;->c:Lcom/subao/common/i/h$a;

    iget-object v1, v1, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    new-instance v2, Lcom/subao/common/i/h$a$q;

    invoke-direct {v2, v0}, Lcom/subao/common/i/h$a$q;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/subao/common/i/i;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 537
    :sswitch_1
    invoke-direct {p0}, Lcom/subao/common/i/h$a$j;->f()V

    goto :goto_0

    .line 528
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0x1f4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    const-string v0, "/v3/report/client/installation/android"

    return-object v0
.end method

.method protected c()[B
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/subao/common/i/h$a$j;->d:Lcom/subao/common/i/o;

    invoke-static {v0}, Lcom/subao/common/i/h;->a(Lcom/subao/common/c;)[B

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/subao/common/i/h$a$j;->f()V

    .line 524
    return-void
.end method
