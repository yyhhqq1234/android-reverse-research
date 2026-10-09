.class final Lcom/applovin/impl/ee$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/be;
.implements Lcom/applovin/impl/z6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/ee$c;

.field private b:Lcom/applovin/impl/be$a;

.field private c:Lcom/applovin/impl/z6$a;

.field final synthetic d:Lcom/applovin/impl/ee;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/ee;Lcom/applovin/impl/ee$c;)V
    .locals 1

    .line 529
    iput-object p1, p0, Lcom/applovin/impl/ee$a;->d:Lcom/applovin/impl/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    invoke-static {p1}, Lcom/applovin/impl/ee;->a(Lcom/applovin/impl/ee;)Lcom/applovin/impl/be$a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/ee$a;->b:Lcom/applovin/impl/be$a;

    .line 531
    invoke-static {p1}, Lcom/applovin/impl/ee;->b(Lcom/applovin/impl/ee;)Lcom/applovin/impl/z6$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/ee$a;->c:Lcom/applovin/impl/z6$a;

    .line 532
    iput-object p2, p0, Lcom/applovin/impl/ee$a;->a:Lcom/applovin/impl/ee$c;

    return-void
.end method

.method private f(ILcom/applovin/impl/ae$a;)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 660
    iget-object v0, p0, Lcom/applovin/impl/ee$a;->a:Lcom/applovin/impl/ee$c;

    invoke-static {v0, p2}, Lcom/applovin/impl/ee;->a(Lcom/applovin/impl/ee$c;Lcom/applovin/impl/ae$a;)Lcom/applovin/impl/ae$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/ee$a;->a:Lcom/applovin/impl/ee$c;

    invoke-static {v0, p1}, Lcom/applovin/impl/ee;->a(Lcom/applovin/impl/ee$c;I)I

    move-result p1

    .line 667
    iget-object v0, p0, Lcom/applovin/impl/ee$a;->b:Lcom/applovin/impl/be$a;

    iget v1, v0, Lcom/applovin/impl/be$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/applovin/impl/be$a;->b:Lcom/applovin/impl/ae$a;

    .line 668
    invoke-static {v0, p2}, Lcom/applovin/impl/xp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/ee$a;->d:Lcom/applovin/impl/ee;

    .line 670
    invoke-static {v0}, Lcom/applovin/impl/ee;->a(Lcom/applovin/impl/ee;)Lcom/applovin/impl/be$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/applovin/impl/be$a;->a(ILcom/applovin/impl/ae$a;J)Lcom/applovin/impl/be$a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/ee$a;->b:Lcom/applovin/impl/be$a;

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/ee$a;->c:Lcom/applovin/impl/z6$a;

    iget v1, v0, Lcom/applovin/impl/z6$a;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/applovin/impl/z6$a;->b:Lcom/applovin/impl/ae$a;

    .line 674
    invoke-static {v0, p2}, Lcom/applovin/impl/xp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 675
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/ee$a;->d:Lcom/applovin/impl/ee;

    .line 676
    invoke-static {v0}, Lcom/applovin/impl/ee;->b(Lcom/applovin/impl/ee;)Lcom/applovin/impl/z6$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/z6$a;->a(ILcom/applovin/impl/ae$a;)Lcom/applovin/impl/z6$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/ee$a;->c:Lcom/applovin/impl/z6$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(ILcom/applovin/impl/ae$a;)V
    .locals 0

    .line 1241
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/ee$a;->f(ILcom/applovin/impl/ae$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1242
    iget-object p1, p0, Lcom/applovin/impl/ee$a;->c:Lcom/applovin/impl/z6$a;

    invoke-virtual {p1}, Lcom/applovin/impl/z6$a;->b()V

    :cond_0
    return-void
.end method

.method public a(ILcom/applovin/impl/ae$a;I)V
    .locals 0

    .line 1852
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/ee$a;->f(ILcom/applovin/impl/ae$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1853
    iget-object p1, p0, Lcom/applovin/impl/ee$a;->c:Lcom/applovin/impl/z6$a;

    invoke-virtual {p1, p3}, Lcom/applovin/impl/z6$a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(ILcom/applovin/impl/ae$a;Lcom/applovin/impl/mc;Lcom/applovin/impl/td;)V
    .locals 0

    .line 3045
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/ee$a;->f(ILcom/applovin/impl/ae$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3046
    iget-object p1, p0, Lcom/applovin/impl/ee$a;->b:Lcom/applovin/impl/be$a;

    invoke-virtual {p1, p3, p4}, Lcom/applovin/impl/be$a;->a(Lcom/applovin/impl/mc;Lcom/applovin/impl/td;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/applovin/impl/ae$a;Lcom/applovin/impl/mc;Lcom/applovin/impl/td;Ljava/io/IOException;Z)V
    .locals 0

    .line 3624
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/ee$a;->f(ILcom/applovin/impl/ae$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3625
    iget-object p1, p0, Lcom/applovin/impl/ee$a;->b:Lcom/applovin/impl/be$a;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/applovin/impl/be$a;->a(Lcom/applovin/impl/mc;Lcom/applovin/impl/td;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public a(ILcom/applovin/impl/ae$a;Lcom/applovin/impl/td;)V
    .locals 0

    .line 598
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/ee$a;->f(ILcom/applovin/impl/ae$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 599
    iget-object p1, p0, Lcom/applovin/impl/ee$a;->b:Lcom/applovin/impl/be$a;

    invoke-virtual {p1, p3}, Lcom/applovin/impl/be$a;->a(Lcom/applovin/impl/td;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/applovin/impl/ae$a;Ljava/lang/Exception;)V
    .locals 0

    .line 2479
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/ee$a;->f(ILcom/applovin/impl/ae$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2480
    iget-object p1, p0, Lcom/applovin/impl/ee$a;->c:Lcom/applovin/impl/z6$a;

    invoke-virtual {p1, p3}, Lcom/applovin/impl/z6$a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public b(ILcom/applovin/impl/ae$a;)V
    .locals 0

    .line 650
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/ee$a;->f(ILcom/applovin/impl/ae$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 651
    iget-object p1, p0, Lcom/applovin/impl/ee$a;->c:Lcom/applovin/impl/z6$a;

    invoke-virtual {p1}, Lcom/applovin/impl/z6$a;->d()V

    :cond_0
    return-void
.end method

.method public b(ILcom/applovin/impl/ae$a;Lcom/applovin/impl/mc;Lcom/applovin/impl/td;)V
    .locals 0

    .line 1194
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/ee$a;->f(ILcom/applovin/impl/ae$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1195
    iget-object p1, p0, Lcom/applovin/impl/ee$a;->b:Lcom/applovin/impl/be$a;

    invoke-virtual {p1, p3, p4}, Lcom/applovin/impl/be$a;->c(Lcom/applovin/impl/mc;Lcom/applovin/impl/td;)V

    :cond_0
    return-void
.end method

.method public c(ILcom/applovin/impl/ae$a;)V
    .locals 0

    .line 634
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/ee$a;->f(ILcom/applovin/impl/ae$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 635
    iget-object p1, p0, Lcom/applovin/impl/ee$a;->c:Lcom/applovin/impl/z6$a;

    invoke-virtual {p1}, Lcom/applovin/impl/z6$a;->c()V

    :cond_0
    return-void
.end method

.method public c(ILcom/applovin/impl/ae$a;Lcom/applovin/impl/mc;Lcom/applovin/impl/td;)V
    .locals 0

    .line 1189
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/ee$a;->f(ILcom/applovin/impl/ae$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1190
    iget-object p1, p0, Lcom/applovin/impl/ee$a;->b:Lcom/applovin/impl/be$a;

    invoke-virtual {p1, p3, p4}, Lcom/applovin/impl/be$a;->b(Lcom/applovin/impl/mc;Lcom/applovin/impl/td;)V

    :cond_0
    return-void
.end method

.method public d(ILcom/applovin/impl/ae$a;)V
    .locals 0

    .line 618
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/ee$a;->f(ILcom/applovin/impl/ae$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 619
    iget-object p1, p0, Lcom/applovin/impl/ee$a;->c:Lcom/applovin/impl/z6$a;

    invoke-virtual {p1}, Lcom/applovin/impl/z6$a;->a()V

    :cond_0
    return-void
.end method

.method public synthetic e(ILcom/applovin/impl/ae$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/applovin/impl/z6$-CC;->$default$e(Lcom/applovin/impl/z6;ILcom/applovin/impl/ae$a;)V

    return-void
.end method
