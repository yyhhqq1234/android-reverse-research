.class public Lcom/subao/common/i/j;
.super Ljava/lang/Object;
.source "MessageToolsImpl.java"

# interfaces
.implements Lcom/subao/common/i/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/i/j$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/subao/common/e/q$a;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/subao/common/j/j;

.field private final e:Lcom/subao/common/i/a;

.field private final f:Lcom/subao/common/i/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/subao/common/e/q$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/j;Lcom/subao/common/i/f;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/i/j;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/subao/common/i/j;->b:Lcom/subao/common/e/q$a;

    .line 36
    iput-object p5, p0, Lcom/subao/common/i/j;->c:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/subao/common/i/j;->d:Lcom/subao/common/j/j;

    .line 38
    new-instance v0, Lcom/subao/common/i/a;

    .line 40
    invoke-static {p2}, Lcom/subao/common/i/j;->a(Lcom/subao/common/e/q$a;)Lcom/subao/common/e/g;

    move-result-object v1

    .line 41
    invoke-static {p3, p4}, Lcom/subao/common/i/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/subao/common/i/r;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/subao/common/i/a;-><init>(Landroid/content/Context;Lcom/subao/common/e/g;Lcom/subao/common/i/r;)V

    iput-object v0, p0, Lcom/subao/common/i/j;->e:Lcom/subao/common/i/a;

    .line 43
    iput-object p7, p0, Lcom/subao/common/i/j;->f:Lcom/subao/common/i/f;

    .line 44
    return-void
.end method

.method static a(Lcom/subao/common/e/q$a;)Lcom/subao/common/e/g;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/subao/common/i/j$1;->a:[I

    invoke-virtual {p0}, Lcom/subao/common/e/q$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 54
    sget-object v0, Lcom/subao/common/e/g;->b:Lcom/subao/common/e/g;

    .line 56
    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    sget-object v0, Lcom/subao/common/e/g;->d:Lcom/subao/common/e/g;

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/subao/common/i/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/subao/common/n/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b()Lcom/subao/common/j/j;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/subao/common/i/j;->d:Lcom/subao/common/j/j;

    return-object v0
.end method

.method public c()Lcom/subao/common/e/g;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/subao/common/e/g;->d:Lcom/subao/common/e/g;

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/subao/common/i/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/subao/common/i/j$a;-><init>(Lcom/subao/common/i/j$1;)V

    invoke-virtual {p0, v0}, Lcom/subao/common/i/j;->a(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public e()Lcom/subao/common/i/a;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/subao/common/i/j;->e:Lcom/subao/common/i/a;

    return-object v0
.end method

.method public f()Lcom/subao/common/i/f;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/subao/common/i/j;->f:Lcom/subao/common/i/f;

    return-object v0
.end method
