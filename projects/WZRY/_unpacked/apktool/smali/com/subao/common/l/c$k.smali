.class Lcom/subao/common/l/c$k;
.super Lcom/subao/common/l/c$h;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# instance fields
.field private final b:Lcom/subao/common/l/f;

.field private final c:Lcom/subao/common/l/h;


# direct methods
.method constructor <init>(Lcom/subao/common/l/c$e;Lcom/subao/common/l/f;Lcom/subao/common/l/h;)V
    .locals 0

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/subao/common/l/c$h;-><init>(Lcom/subao/common/l/c$e;)V

    .line 729
    iput-object p2, p0, Lcom/subao/common/l/c$k;->b:Lcom/subao/common/l/f;

    .line 730
    iput-object p3, p0, Lcom/subao/common/l/c$k;->c:Lcom/subao/common/l/h;

    .line 731
    return-void
.end method

.method private static a(Lcom/subao/common/l/c$m$a;)Z
    .locals 1

    .prologue
    .line 794
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/subao/common/l/c$m$a;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/subao/common/l/c$m$a;)V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/subao/common/l/c$k;->c:Lcom/subao/common/l/h;

    iget-object v1, p1, Lcom/subao/common/l/c$m$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/subao/common/l/h;->a(Ljava/lang/String;)V

    .line 799
    return-void
.end method


# virtual methods
.method a()Lcom/subao/common/l/c$a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 736
    sget-object v0, Lcom/subao/common/l/c$a;->a:Lcom/subao/common/l/c$a;

    return-object v0
.end method

.method protected a(ILjava/lang/Exception;[B)Lcom/subao/common/l/c$c;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 815
    invoke-virtual {p0, p1, p2, p3}, Lcom/subao/common/l/c$k;->b(ILjava/lang/Exception;[B)Lcom/subao/common/l/a;

    move-result-object v2

    .line 816
    iget-object v0, p0, Lcom/subao/common/l/c$k;->c:Lcom/subao/common/l/h;

    invoke-virtual {v2, v0}, Lcom/subao/common/l/a;->a(Lcom/subao/common/l/h;)V

    .line 817
    new-instance v0, Lcom/subao/common/l/c$c;

    iget-object v1, p0, Lcom/subao/common/l/c$k;->a:Lcom/subao/common/l/c$e;

    iget v1, v1, Lcom/subao/common/l/c$e;->a:I

    iget-object v4, p0, Lcom/subao/common/l/c$k;->c:Lcom/subao/common/l/h;

    iget v5, v4, Lcom/subao/common/l/h;->e:I

    .line 818
    invoke-virtual {v2}, Lcom/subao/common/l/a;->a()Lcom/subao/common/i/n$a;

    move-result-object v6

    move v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/l/c$c;-><init>(IILjava/lang/String;Ljava/lang/String;ILcom/subao/common/i/n$a;)V

    return-object v0
.end method

.method a(Lcom/subao/common/j/a$c;)Lcom/subao/common/l/c$c;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/subao/common/l/c$k;->c:Lcom/subao/common/l/h;

    iget v0, v0, Lcom/subao/common/l/h;->e:I

    invoke-virtual {p0, p1, v0}, Lcom/subao/common/l/c$k;->a(Lcom/subao/common/j/a$c;I)Lcom/subao/common/l/c$c;

    move-result-object v0

    return-object v0
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 741
    const/16 v0, 0xc9

    return v0
.end method

.method protected b(Lcom/subao/common/j/a$c;)Lcom/subao/common/l/c$h$b;
    .locals 4

    .prologue
    .line 828
    iget-object v0, p1, Lcom/subao/common/j/a$c;->b:[B

    invoke-static {v0}, Lcom/subao/common/l/i;->a([B)Lcom/subao/common/l/i;

    move-result-object v0

    .line 829
    new-instance v1, Lcom/subao/common/l/c$h$b;

    iget v2, v0, Lcom/subao/common/l/i;->a:I

    iget-object v3, v0, Lcom/subao/common/l/i;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/subao/common/l/i;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/subao/common/l/c$h$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method d()Lcom/subao/common/l/c$h$a;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 747
    const-string v0, "SubaoQos"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 749
    invoke-static {}, Lcom/subao/common/l/k;->a()Lcom/subao/common/l/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subao/common/l/k;->c()Lcom/subao/common/e/aj;

    move-result-object v1

    .line 750
    if-eqz v1, :cond_0

    .line 751
    iget-object v2, p0, Lcom/subao/common/l/c$k;->c:Lcom/subao/common/l/h;

    invoke-virtual {v1}, Lcom/subao/common/e/aj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/subao/common/l/h;->d(Ljava/lang/String;)V

    .line 753
    :cond_0
    if-eqz v0, :cond_1

    .line 754
    const-string v2, "SubaoQos"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The RegionAndISP is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v1, "SubaoQos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The QosParam is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/subao/common/l/c$k;->b:Lcom/subao/common/l/f;

    invoke-static {v3}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/subao/common/l/c$k;->b:Lcom/subao/common/l/f;

    invoke-static {v1}, Lcom/subao/common/l/c$m;->a(Lcom/subao/common/l/f;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 759
    if-eqz v0, :cond_2

    .line 760
    const-string v0, "SubaoQos"

    const-string v1, "Security token required"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_2
    invoke-virtual {p0}, Lcom/subao/common/l/c$k;->a()Lcom/subao/common/l/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/l/c$k;->c:Lcom/subao/common/l/h;

    iget-object v2, p0, Lcom/subao/common/l/c$k;->b:Lcom/subao/common/l/f;

    iget-object v2, v2, Lcom/subao/common/l/f;->b:Lcom/subao/common/l/f$a;

    .line 764
    invoke-static {v2}, Lcom/subao/common/l/c$m;->a(Lcom/subao/common/l/f$a;)Lcom/subao/common/e/f$a;

    move-result-object v2

    .line 762
    invoke-static {v0, v1, v2}, Lcom/subao/common/l/c$m;->a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;Lcom/subao/common/e/f$a;)Lcom/subao/common/l/c$m$a;

    move-result-object v1

    .line 765
    invoke-static {v1}, Lcom/subao/common/l/c$k;->a(Lcom/subao/common/l/c$m$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 766
    new-instance v0, Lcom/subao/common/l/c$h$a;

    iget v2, v1, Lcom/subao/common/l/c$m$a;->a:I

    iget-object v1, v1, Lcom/subao/common/l/c$m$a;->c:Lcom/subao/common/i/n$a;

    invoke-direct {v0, v2, v1}, Lcom/subao/common/l/c$h$a;-><init>(ILcom/subao/common/i/n$a;)V

    .line 790
    :goto_0
    return-object v0

    .line 769
    :cond_3
    invoke-direct {p0, v1}, Lcom/subao/common/l/c$k;->b(Lcom/subao/common/l/c$m$a;)V

    .line 790
    :cond_4
    :goto_1
    new-instance v0, Lcom/subao/common/l/c$h$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/subao/common/l/c$h$a;-><init>(ILcom/subao/common/i/n$a;)V

    goto :goto_0

    .line 771
    :cond_5
    iget-object v1, p0, Lcom/subao/common/l/c$k;->b:Lcom/subao/common/l/f;

    invoke-static {v1}, Lcom/subao/common/l/c$g;->a(Lcom/subao/common/l/f;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 772
    if-eqz v0, :cond_6

    .line 773
    const-string v0, "SubaoQos"

    const-string v1, "Phone Number required"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_6
    invoke-virtual {p0}, Lcom/subao/common/l/c$k;->a()Lcom/subao/common/l/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/l/c$k;->c:Lcom/subao/common/l/h;

    .line 778
    invoke-static {}, Lcom/subao/common/l/c$g;->a()Lcom/subao/common/e/p;

    move-result-object v2

    .line 775
    invoke-static {v0, v1, v2}, Lcom/subao/common/l/c$g;->a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;Lcom/subao/common/e/p;)Lcom/subao/common/l/c$f;

    move-result-object v1

    .line 780
    iget v0, v1, Lcom/subao/common/l/c$f;->a:I

    if-eqz v0, :cond_7

    .line 781
    new-instance v0, Lcom/subao/common/l/c$h$a;

    iget v2, v1, Lcom/subao/common/l/c$f;->a:I

    iget-object v1, v1, Lcom/subao/common/l/c$f;->d:Lcom/subao/common/i/n$a;

    invoke-direct {v0, v2, v1}, Lcom/subao/common/l/c$h$a;-><init>(ILcom/subao/common/i/n$a;)V

    goto :goto_0

    .line 783
    :cond_7
    iget-object v0, p0, Lcom/subao/common/l/c$k;->c:Lcom/subao/common/l/h;

    iget-object v2, v1, Lcom/subao/common/l/c$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/subao/common/l/h;->b(Ljava/lang/String;)V

    .line 784
    iget-object v0, v1, Lcom/subao/common/l/c$f;->c:Ljava/lang/String;

    .line 785
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_4

    .line 786
    iget-object v1, p0, Lcom/subao/common/l/c$k;->c:Lcom/subao/common/l/h;

    invoke-virtual {v1, v0}, Lcom/subao/common/l/h;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method e()Lcom/subao/common/j/a$b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 804
    sget-object v0, Lcom/subao/common/j/a$b;->b:Lcom/subao/common/j/a$b;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Lcom/subao/common/l/c$k;->c:Lcom/subao/common/l/h;

    invoke-static {v0}, Lcom/subao/common/n/g;->a(Lcom/subao/common/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 836
    :try_start_0
    invoke-virtual {p0}, Lcom/subao/common/l/c$k;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 840
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Requester_Open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    const-string v0, "?"

    goto :goto_0
.end method
