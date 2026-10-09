.class Lcom/subao/common/a/c$af;
.super Ljava/lang/Object;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "af"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/a/c;

.field private final b:Lcom/subao/common/g/c;

.field private c:Lcom/subao/common/a/c$ac;

.field private volatile d:Z


# direct methods
.method constructor <init>(Lcom/subao/common/a/c;Lcom/subao/common/g/c;)V
    .locals 1

    .prologue
    .line 1625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1626
    iput-object p1, p0, Lcom/subao/common/a/c$af;->a:Lcom/subao/common/a/c;

    .line 1627
    iput-object p2, p0, Lcom/subao/common/a/c$af;->b:Lcom/subao/common/g/c;

    .line 1628
    invoke-static {p1}, Lcom/subao/common/a/c;->b(Lcom/subao/common/a/c;)Lcom/subao/common/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subao/common/e/a;->e()V

    .line 1629
    return-void
.end method

.method private b()Lcom/subao/common/a/c$ac;
    .locals 3

    .prologue
    .line 1684
    :try_start_0
    new-instance v0, Lcom/subao/common/a/c$ae;

    iget-object v1, p0, Lcom/subao/common/a/c$af;->a:Lcom/subao/common/a/c;

    invoke-static {v1}, Lcom/subao/common/a/c;->c(Lcom/subao/common/a/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/a/c$af;->b:Lcom/subao/common/g/c;

    invoke-direct {v0, v1, v2}, Lcom/subao/common/a/c$ae;-><init>(Landroid/content/Context;Lcom/subao/common/g/c;)V
    :try_end_0
    .catch Lcom/subao/common/k/b$d; {:try_start_0 .. :try_end_0} :catch_0

    .line 1688
    :goto_0
    return-object v0

    .line 1685
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1686
    new-instance v0, Lcom/subao/common/a/c$ad;

    invoke-virtual {v1}, Lcom/subao/common/k/b$d;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/subao/common/a/c$ad;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 1645
    monitor-enter p0

    .line 1646
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/a/c$af;->c:Lcom/subao/common/a/c$ac;

    .line 1647
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    if-nez v0, :cond_1

    .line 1649
    invoke-direct {p0}, Lcom/subao/common/a/c$af;->b()Lcom/subao/common/a/c$ac;

    move-result-object v0

    .line 1650
    monitor-enter p0

    .line 1651
    :try_start_1
    iget-object v1, p0, Lcom/subao/common/a/c$af;->c:Lcom/subao/common/a/c$ac;

    if-nez v1, :cond_0

    .line 1652
    iput-object v0, p0, Lcom/subao/common/a/c$af;->c:Lcom/subao/common/a/c$ac;

    .line 1654
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1657
    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Lcom/subao/common/a/c$ac;->a(Landroid/content/Context;)I

    move-result v0

    .line 1658
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/subao/common/a/c$af;->d:Z
    :try_end_2
    .catch Lcom/subao/common/k/b$d; {:try_start_2 .. :try_end_2} :catch_0

    .line 1659
    return v0

    .line 1647
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1654
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1660
    :catch_0
    move-exception v0

    .line 1661
    invoke-virtual {v0}, Lcom/subao/common/k/b$d;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1677
    :cond_2
    :goto_0
    :pswitch_0
    throw v0

    .line 1666
    :pswitch_1
    invoke-virtual {p0}, Lcom/subao/common/a/c$af;->a()V

    goto :goto_0

    .line 1671
    :pswitch_2
    iget-boolean v1, p0, Lcom/subao/common/a/c$af;->d:Z

    if-nez v1, :cond_2

    .line 1672
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/subao/common/a/c$af;->d:Z

    .line 1673
    invoke-virtual {p0}, Lcom/subao/common/a/c$af;->a()V

    goto :goto_0

    .line 1661
    :pswitch_data_0
    .packed-switch 0x7d7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()V
    .locals 2

    .prologue
    .line 1632
    const-string v0, "SubaoParallel"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    monitor-enter p0

    .line 1635
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/a/c$af;->c:Lcom/subao/common/a/c$ac;

    .line 1636
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/subao/common/a/c$af;->c:Lcom/subao/common/a/c$ac;

    .line 1637
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1638
    if-eqz v0, :cond_0

    .line 1639
    invoke-interface {v0}, Lcom/subao/common/a/c$ac;->a()V

    .line 1641
    :cond_0
    return-void

    .line 1637
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
