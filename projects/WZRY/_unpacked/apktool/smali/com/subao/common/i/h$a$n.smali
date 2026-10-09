.class Lcom/subao/common/i/h$a$n;
.super Lcom/subao/common/i/h$a$m;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation


# instance fields
.field final synthetic d:Lcom/subao/common/i/h$a;

.field private final e:I

.field private final g:I

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/i/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/i/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 633
    iput-object p1, p0, Lcom/subao/common/i/h$a$n;->d:Lcom/subao/common/i/h$a;

    .line 634
    const-string v0, "Start"

    invoke-direct {p0, p1, v0}, Lcom/subao/common/i/h$a$m;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;)V

    .line 635
    iput p2, p0, Lcom/subao/common/i/h$a$n;->e:I

    .line 636
    iput p3, p0, Lcom/subao/common/i/h$a$n;->g:I

    .line 637
    iput-object p4, p0, Lcom/subao/common/i/h$a$n;->h:Ljava/util/List;

    .line 638
    return-void
.end method

.method private a([B)V
    .locals 4

    .prologue
    .line 656
    iget-object v0, p0, Lcom/subao/common/i/h$a$n;->d:Lcom/subao/common/i/h$a;

    iget-object v0, v0, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    invoke-interface {v0}, Lcom/subao/common/i/i;->d()V

    .line 657
    invoke-static {p1}, Lcom/subao/common/i/e;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-static {v0}, Lcom/subao/common/e/am;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 660
    const-string v1, "SubaoMessage"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    const-string v1, "SubaoMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response of \'start\': subaoId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/subao/common/i/h$a$n;->d:Lcom/subao/common/i/h$a;

    iget-object v1, v1, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    new-instance v2, Lcom/subao/common/i/h$a$q;

    invoke-direct {v2, v0}, Lcom/subao/common/i/h$a$q;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/subao/common/i/i;->a(Ljava/lang/Runnable;)V

    .line 678
    :goto_0
    return-void

    .line 665
    :cond_1
    const-string v0, "SubaoMessage"

    const-string v1, "Response of \'start\', subaoId is invalid"

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/subao/common/i/h$a$n;->d:Lcom/subao/common/i/h$a;

    iget-object v0, v0, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    new-instance v1, Lcom/subao/common/i/h$a$n$1;

    invoke-direct {v1, p0}, Lcom/subao/common/i/h$a$n$1;-><init>(Lcom/subao/common/i/h$a$n;)V

    invoke-interface {v0, v1}, Lcom/subao/common/i/i;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/subao/common/j/a$c;)V
    .locals 1

    .prologue
    .line 682
    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    packed-switch v0, :pswitch_data_0

    .line 687
    invoke-super {p0, p1}, Lcom/subao/common/i/h$a$m;->a(Lcom/subao/common/j/a$c;)V

    .line 690
    :goto_0
    return-void

    .line 684
    :pswitch_0
    iget-object v0, p1, Lcom/subao/common/j/a$c;->b:[B

    invoke-direct {p0, v0}, Lcom/subao/common/i/h$a$n;->a([B)V

    goto :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    const-string v0, "/v3/report/client/start/android"

    return-object v0
.end method

.method protected c()[B
    .locals 4

    .prologue
    .line 647
    iget-object v0, p0, Lcom/subao/common/i/h$a$n;->d:Lcom/subao/common/i/h$a;

    iget-object v0, v0, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    invoke-interface {v0}, Lcom/subao/common/i/i;->e()Lcom/subao/common/i/a;

    move-result-object v0

    .line 648
    invoke-static {}, Lcom/subao/common/i/k;->a()Lcom/subao/common/i/k;

    move-result-object v1

    iget v2, p0, Lcom/subao/common/i/h$a$n;->e:I

    iget v3, p0, Lcom/subao/common/i/h$a$n;->g:I

    .line 647
    invoke-virtual {v0, v1, v2, v3}, Lcom/subao/common/i/a;->a(Lcom/subao/common/i/k;II)Lcom/subao/common/i/q;

    move-result-object v0

    .line 649
    invoke-static {v0}, Lcom/subao/common/i/h;->a(Lcom/subao/common/c;)[B

    move-result-object v0

    return-object v0
.end method
