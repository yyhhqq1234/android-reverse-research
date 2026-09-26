.class Lcom/netease/mpay/hl$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/hl$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/hl$a;

.field private b:I

.field private c:F

.field private d:F

.field private e:I

.field private f:Lcom/netease/mpay/hl$c;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/hl$a;IFFILcom/netease/mpay/hl$c;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/hl$a$a;->a:Lcom/netease/mpay/hl$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/netease/mpay/hl$a$a;->b:I

    iput p3, p0, Lcom/netease/mpay/hl$a$a;->c:F

    iput p4, p0, Lcom/netease/mpay/hl$a$a;->d:F

    iput p5, p0, Lcom/netease/mpay/hl$a$a;->e:I

    iput-object p6, p0, Lcom/netease/mpay/hl$a$a;->f:Lcom/netease/mpay/hl$c;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/netease/mpay/hl$a$a;->a:Lcom/netease/mpay/hl$a;

    invoke-virtual {v0}, Lcom/netease/mpay/hl$a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/netease/mpay/hl$a$a;->b:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/hl$a$a;->f:Lcom/netease/mpay/hl$c;

    invoke-interface {v0}, Lcom/netease/mpay/hl$c;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/hl$a$a;->a:Lcom/netease/mpay/hl$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    iget v3, p0, Lcom/netease/mpay/hl$a$a;->c:F

    iget v4, p0, Lcom/netease/mpay/hl$a$a;->d:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/netease/mpay/hl$a$a;->b:I

    int-to-float v4, v4

    iget v5, p0, Lcom/netease/mpay/hl$a$a;->d:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/hl$a;->a(Lcom/netease/mpay/hl$a;[Ljava/lang/Object;)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/netease/mpay/hl$a$a;

    iget-object v1, p0, Lcom/netease/mpay/hl$a$a;->a:Lcom/netease/mpay/hl$a;

    iget v2, p0, Lcom/netease/mpay/hl$a$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/netease/mpay/hl$a$a;->c:F

    iget v4, p0, Lcom/netease/mpay/hl$a$a;->d:F

    iget v5, p0, Lcom/netease/mpay/hl$a$a;->e:I

    iget-object v6, p0, Lcom/netease/mpay/hl$a$a;->f:Lcom/netease/mpay/hl$c;

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/hl$a$a;-><init>(Lcom/netease/mpay/hl$a;IFFILcom/netease/mpay/hl$c;)V

    iget-object v1, p0, Lcom/netease/mpay/hl$a$a;->f:Lcom/netease/mpay/hl$c;

    invoke-interface {v1}, Lcom/netease/mpay/hl$c;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x64

    :goto_1
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/netease/mpay/hl$a$a;->e:I

    int-to-long v1, v1

    goto :goto_1
.end method
