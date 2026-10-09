.class Lcom/subao/gamemaster/GameMaster$b;
.super Ljava/lang/Object;
.source "GameMaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/gamemaster/GameMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/subao/gamemaster/a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final b:Lcom/subao/gamemaster/GameMaster$g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final c:Landroid/content/Context;

.field final d:Ljava/lang/String;

.field final e:Lcom/subao/common/e/q$a;

.field final f:Lcom/subao/common/g/a;

.field final g:Ljava/lang/String;

.field final h:I

.field final i:[B

.field final j:Lcom/subao/common/a/c;

.field final k:Z

.field final l:Lcom/subao/gamemaster/GameMaster$c;


# direct methods
.method constructor <init>(Lcom/subao/gamemaster/a;Lcom/subao/gamemaster/GameMaster$g;Landroid/content/Context;Ljava/lang/String;Lcom/subao/common/e/q$a;Lcom/subao/common/g/a;Ljava/lang/String;I[BLcom/subao/common/a/c;ZLcom/subao/gamemaster/GameMaster$c;)V
    .locals 0
    .param p1    # Lcom/subao/gamemaster/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/gamemaster/GameMaster$g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p1, p0, Lcom/subao/gamemaster/GameMaster$b;->a:Lcom/subao/gamemaster/a;

    .line 565
    iput-object p2, p0, Lcom/subao/gamemaster/GameMaster$b;->b:Lcom/subao/gamemaster/GameMaster$g;

    .line 566
    iput-object p3, p0, Lcom/subao/gamemaster/GameMaster$b;->c:Landroid/content/Context;

    .line 567
    iput-object p4, p0, Lcom/subao/gamemaster/GameMaster$b;->d:Ljava/lang/String;

    .line 568
    iput-object p5, p0, Lcom/subao/gamemaster/GameMaster$b;->e:Lcom/subao/common/e/q$a;

    .line 569
    iput-object p6, p0, Lcom/subao/gamemaster/GameMaster$b;->f:Lcom/subao/common/g/a;

    .line 570
    iput-object p7, p0, Lcom/subao/gamemaster/GameMaster$b;->g:Ljava/lang/String;

    .line 571
    iput p8, p0, Lcom/subao/gamemaster/GameMaster$b;->h:I

    .line 572
    iput-object p9, p0, Lcom/subao/gamemaster/GameMaster$b;->i:[B

    .line 573
    iput-object p10, p0, Lcom/subao/gamemaster/GameMaster$b;->j:Lcom/subao/common/a/c;

    .line 574
    iput-boolean p11, p0, Lcom/subao/gamemaster/GameMaster$b;->k:Z

    .line 575
    iput-object p12, p0, Lcom/subao/gamemaster/GameMaster$b;->l:Lcom/subao/gamemaster/GameMaster$c;

    .line 576
    return-void
.end method

.method private a(I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 587
    iget-object v0, p0, Lcom/subao/gamemaster/GameMaster$b;->a:Lcom/subao/gamemaster/a;

    iget-object v1, p0, Lcom/subao/gamemaster/GameMaster$b;->b:Lcom/subao/gamemaster/GameMaster$g;

    iget-object v1, v1, Lcom/subao/gamemaster/GameMaster$g;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/subao/gamemaster/GameMaster$b;->b:Lcom/subao/gamemaster/GameMaster$g;

    iget-object v2, v2, Lcom/subao/gamemaster/GameMaster$g;->b:Ljava/lang/String;

    sget-object v3, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    .line 590
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 587
    invoke-virtual {v0, v1, v2, v3}, Lcom/subao/gamemaster/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 591
    const-string v1, "SubaoGame"

    sget-object v2, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v3, "Notify U3D observer: %s.%s(%d) result %b"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/subao/gamemaster/GameMaster$b;->b:Lcom/subao/gamemaster/GameMaster$g;

    iget-object v5, v5, Lcom/subao/gamemaster/GameMaster$g;->a:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/subao/gamemaster/GameMaster$b;->b:Lcom/subao/gamemaster/GameMaster$g;

    iget-object v5, v5, Lcom/subao/gamemaster/GameMaster$g;->b:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x2

    .line 595
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v5

    .line 591
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 580
    iget-object v0, p0, Lcom/subao/gamemaster/GameMaster$b;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/subao/gamemaster/GameMaster$b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/subao/gamemaster/GameMaster$b;->e:Lcom/subao/common/e/q$a;

    iget-object v3, p0, Lcom/subao/gamemaster/GameMaster$b;->f:Lcom/subao/common/g/a;

    iget-object v4, p0, Lcom/subao/gamemaster/GameMaster$b;->g:Ljava/lang/String;

    iget v5, p0, Lcom/subao/gamemaster/GameMaster$b;->h:I

    iget-object v6, p0, Lcom/subao/gamemaster/GameMaster$b;->i:[B

    iget-object v7, p0, Lcom/subao/gamemaster/GameMaster$b;->j:Lcom/subao/common/a/c;

    iget-boolean v8, p0, Lcom/subao/gamemaster/GameMaster$b;->k:Z

    iget-object v9, p0, Lcom/subao/gamemaster/GameMaster$b;->l:Lcom/subao/gamemaster/GameMaster$c;

    invoke-static/range {v0 .. v9}, Lcom/subao/gamemaster/GameMaster;->b(Landroid/content/Context;Ljava/lang/String;Lcom/subao/common/e/q$a;Lcom/subao/common/g/a;Ljava/lang/String;I[BLcom/subao/common/a/c;ZLcom/subao/gamemaster/GameMaster$c;)I

    move-result v0

    .line 583
    invoke-direct {p0, v0}, Lcom/subao/gamemaster/GameMaster$b;->a(I)V

    .line 584
    return-void
.end method
