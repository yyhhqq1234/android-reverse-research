.class Lcom/subao/common/a/c$m;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/subao/common/a/a;

.field private final c:Lcom/subao/common/i/g;

.field private final d:Lcom/subao/common/i/i;

.field private final e:I

.field private final f:Lcom/subao/common/intf/AccelSwitchListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/subao/common/a/a;Lcom/subao/common/i/g;Lcom/subao/common/i/i;ILcom/subao/common/intf/AccelSwitchListener;)V
    .locals 0

    .prologue
    .line 1772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1773
    iput-object p1, p0, Lcom/subao/common/a/c$m;->a:Landroid/content/Context;

    .line 1774
    iput-object p2, p0, Lcom/subao/common/a/c$m;->b:Lcom/subao/common/a/a;

    .line 1775
    iput-object p3, p0, Lcom/subao/common/a/c$m;->c:Lcom/subao/common/i/g;

    .line 1776
    iput-object p4, p0, Lcom/subao/common/a/c$m;->d:Lcom/subao/common/i/i;

    .line 1777
    iput p5, p0, Lcom/subao/common/a/c$m;->e:I

    .line 1778
    iput-object p6, p0, Lcom/subao/common/a/c$m;->f:Lcom/subao/common/intf/AccelSwitchListener;

    .line 1779
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1807
    invoke-static {}, Lcom/subao/common/e/am;->b()Lcom/subao/common/e/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subao/common/e/am;->c()Ljava/lang/String;

    move-result-object v0

    .line 1808
    invoke-static {v0}, Lcom/subao/common/e/am;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1809
    const-string v1, "SubaoMessage"

    const-string v2, "SubaoId already exists, do not send INSTALLATION message."

    invoke-static {v1, v2}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    :goto_0
    return-object v0

    .line 1812
    :cond_0
    const-string v0, "SubaoMessage"

    const-string v1, "No SubaoId found, make INSTALLATION message."

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    iget-object v0, p0, Lcom/subao/common/a/c$m;->d:Lcom/subao/common/i/i;

    invoke-interface {v0}, Lcom/subao/common/i/i;->e()Lcom/subao/common/i/a;

    move-result-object v0

    .line 1814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v1, p0, Lcom/subao/common/a/c$m;->a:Landroid/content/Context;

    .line 1815
    invoke-static {v1}, Lcom/subao/common/i/o$a;->a(Landroid/content/Context;)Lcom/subao/common/i/o$a;

    move-result-object v1

    .line 1813
    invoke-virtual {v0, v2, v3, v1}, Lcom/subao/common/i/a;->a(JLcom/subao/common/i/o$a;)Lcom/subao/common/i/o;

    move-result-object v0

    .line 1816
    iget-object v1, p0, Lcom/subao/common/a/c$m;->c:Lcom/subao/common/i/g;

    invoke-interface {v1, v0}, Lcom/subao/common/i/g;->a(Lcom/subao/common/i/o;)V

    .line 1817
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/subao/common/a/a;Lcom/subao/common/i/g;Lcom/subao/common/i/i;ILcom/subao/common/intf/AccelSwitchListener;)V
    .locals 7

    .prologue
    .line 1788
    new-instance v0, Lcom/subao/common/a/c$m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/a/c$m;-><init>(Landroid/content/Context;Lcom/subao/common/a/a;Lcom/subao/common/i/g;Lcom/subao/common/i/i;ILcom/subao/common/intf/AccelSwitchListener;)V

    .line 1794
    invoke-static {}, Lcom/subao/common/n/i;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1795
    invoke-virtual {v0}, Lcom/subao/common/a/c$m;->run()V

    .line 1799
    :goto_0
    return-void

    .line 1797
    :cond_0
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/subao/common/a/c$m;->f:Lcom/subao/common/intf/AccelSwitchListener;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/subao/common/a/c$m;->f:Lcom/subao/common/intf/AccelSwitchListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/subao/common/intf/AccelSwitchListener;->onAccelSwitch(Z)V

    .line 1825
    :cond_0
    invoke-direct {p0}, Lcom/subao/common/a/c$m;->a()Ljava/lang/String;

    move-result-object v0

    .line 1826
    if-nez v0, :cond_1

    .line 1836
    :goto_0
    return-void

    .line 1830
    :cond_1
    invoke-static {}, Lcom/subao/common/a/c$w;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1832
    iget-object v0, p0, Lcom/subao/common/a/c$m;->b:Lcom/subao/common/a/a;

    iget-object v1, p0, Lcom/subao/common/a/c$m;->c:Lcom/subao/common/i/g;

    iget v2, p0, Lcom/subao/common/a/c$m;->e:I

    invoke-static {v0, v1, v2}, Lcom/subao/common/a/c$w;->a(Lcom/subao/common/a/a;Lcom/subao/common/i/g;I)V

    goto :goto_0

    .line 1834
    :cond_2
    iget-object v0, p0, Lcom/subao/common/a/c$m;->c:Lcom/subao/common/i/g;

    iget v1, p0, Lcom/subao/common/a/c$m;->e:I

    invoke-static {v0, v1}, Lcom/subao/common/a/c$w;->a(Lcom/subao/common/i/g;I)V

    goto :goto_0
.end method
