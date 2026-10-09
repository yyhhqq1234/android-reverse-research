.class Lcom/subao/common/i/h$a$k;
.super Lcom/subao/common/i/h$a$m;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field final d:Ljava/lang/String;

.field final synthetic e:Lcom/subao/common/i/h$a;

.field private final g:[B


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;Ljava/lang/String;[B)V
    .locals 5

    .prologue
    .line 779
    iput-object p1, p0, Lcom/subao/common/i/h$a$k;->e:Lcom/subao/common/i/h$a;

    .line 780
    const-string v0, "Link"

    invoke-direct {p0, p1, v0}, Lcom/subao/common/i/h$a$m;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;)V

    .line 781
    iput-object p2, p0, Lcom/subao/common/i/h$a$k;->d:Ljava/lang/String;

    .line 782
    iput-object p3, p0, Lcom/subao/common/i/h$a$k;->g:[B

    .line 784
    const-string v0, "SubaoMessage"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const-string v0, "SubaoMessage"

    const-string v1, "Perform Link Message: id=%s, body:\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/subao/common/j/a$c;)V
    .locals 2

    .prologue
    .line 802
    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_1

    .line 803
    invoke-virtual {p0}, Lcom/subao/common/i/h$a$k;->f()Z

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/subao/common/i/h$a$k;->e:Lcom/subao/common/i/h$a;

    iget-object v0, v0, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    invoke-interface {v0}, Lcom/subao/common/i/i;->f()Lcom/subao/common/i/f;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/i/h$a$k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/subao/common/i/f;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    const-string v0, "/v3/report/client/gaming/link"

    return-object v0
.end method

.method protected c()[B
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/subao/common/i/h$a$k;->g:[B

    return-object v0
.end method
