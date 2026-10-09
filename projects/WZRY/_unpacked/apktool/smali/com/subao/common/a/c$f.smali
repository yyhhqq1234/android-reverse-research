.class Lcom/subao/common/a/c$f;
.super Ljava/lang/Object;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/a/c$f$b;,
        Lcom/subao/common/a/c$f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/a/c$f$a;

.field private final b:J

.field private final c:Lcom/subao/common/a/c$f$b;

.field private final d:Z


# direct methods
.method private constructor <init>(Lcom/subao/common/a/c$f$a;J)V
    .locals 2

    .prologue
    .line 2648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2649
    iput-object p1, p0, Lcom/subao/common/a/c$f;->a:Lcom/subao/common/a/c$f$a;

    .line 2650
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const-wide/32 p2, 0x112a880

    :cond_0
    iput-wide p2, p0, Lcom/subao/common/a/c$f;->b:J

    .line 2651
    new-instance v0, Lcom/subao/common/a/c$f$b;

    invoke-direct {v0, p0}, Lcom/subao/common/a/c$f$b;-><init>(Lcom/subao/common/a/c$f;)V

    iput-object v0, p0, Lcom/subao/common/a/c$f;->c:Lcom/subao/common/a/c$f$b;

    .line 2652
    invoke-interface {p1}, Lcom/subao/common/a/c$f$a;->a()Lcom/subao/common/j/j$a;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/a/c$f;->a(Lcom/subao/common/j/j$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/subao/common/a/c$f;->d:Z

    .line 2653
    return-void
.end method

.method static a()J
    .locals 2

    .prologue
    .line 2680
    invoke-static {}, Lcom/subao/common/e/ab;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/subao/common/a/c$f;)J
    .locals 2

    .prologue
    .line 2634
    iget-wide v0, p0, Lcom/subao/common/a/c$f;->b:J

    return-wide v0
.end method

.method static a(Lcom/subao/common/a/c$f$a;J)Lcom/subao/common/a/c$f;
    .locals 7

    .prologue
    .line 2662
    new-instance v0, Lcom/subao/common/a/c$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/subao/common/a/c$f;-><init>(Lcom/subao/common/a/c$f$a;J)V

    .line 2663
    iget-object v1, v0, Lcom/subao/common/a/c$f;->a:Lcom/subao/common/a/c$f$a;

    iget-object v2, v0, Lcom/subao/common/a/c$f;->c:Lcom/subao/common/a/c$f$b;

    iget-wide v4, v0, Lcom/subao/common/a/c$f;->b:J

    invoke-interface {v1, v2, v4, v5}, Lcom/subao/common/a/c$f$a;->a(Ljava/lang/Runnable;J)Z

    .line 2664
    return-object v0
.end method

.method static a(Lcom/subao/common/j/j$a;)Z
    .locals 2

    .prologue
    .line 2668
    sget-object v0, Lcom/subao/common/a/c$2;->b:[I

    invoke-virtual {p0}, Lcom/subao/common/j/j$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2675
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2673
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2668
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/subao/common/a/c$f;)Lcom/subao/common/a/c$f$a;
    .locals 1

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/subao/common/a/c$f;->a:Lcom/subao/common/a/c$f$a;

    return-object v0
.end method


# virtual methods
.method b(Lcom/subao/common/j/j$a;)V
    .locals 2

    .prologue
    .line 2689
    iget-boolean v0, p0, Lcom/subao/common/a/c$f;->d:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/subao/common/a/c$f;->a(Lcom/subao/common/j/j$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2692
    iget-object v0, p0, Lcom/subao/common/a/c$f;->a:Lcom/subao/common/a/c$f$a;

    iget-object v1, p0, Lcom/subao/common/a/c$f;->c:Lcom/subao/common/a/c$f$b;

    invoke-interface {v0, v1}, Lcom/subao/common/a/c$f$a;->b(Ljava/lang/Runnable;)V

    .line 2693
    iget-object v0, p0, Lcom/subao/common/a/c$f;->a:Lcom/subao/common/a/c$f$a;

    iget-object v1, p0, Lcom/subao/common/a/c$f;->c:Lcom/subao/common/a/c$f$b;

    invoke-interface {v0, v1}, Lcom/subao/common/a/c$f$a;->a(Ljava/lang/Runnable;)Z

    .line 2695
    :cond_0
    return-void
.end method
