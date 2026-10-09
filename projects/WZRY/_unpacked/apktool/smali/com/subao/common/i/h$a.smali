.class Lcom/subao/common/i/h$a;
.super Landroid/os/Handler;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/i/h$a$f;,
        Lcom/subao/common/i/h$a$i;,
        Lcom/subao/common/i/h$a$g;,
        Lcom/subao/common/i/h$a$h;,
        Lcom/subao/common/i/h$a$e;,
        Lcom/subao/common/i/h$a$d;,
        Lcom/subao/common/i/h$a$c;,
        Lcom/subao/common/i/h$a$k;,
        Lcom/subao/common/i/h$a$l;,
        Lcom/subao/common/i/h$a$n;,
        Lcom/subao/common/i/h$a$m;,
        Lcom/subao/common/i/h$a$b;,
        Lcom/subao/common/i/h$a$j;,
        Lcom/subao/common/i/h$a$o;,
        Lcom/subao/common/i/h$a$p;,
        Lcom/subao/common/i/h$a$a;,
        Lcom/subao/common/i/h$a$q;
    }
.end annotation


# instance fields
.field final a:Lcom/subao/common/i/i;

.field final b:Lcom/subao/common/e/al;

.field final c:Lcom/subao/common/i/m;

.field private final d:Lcom/subao/common/i/l;

.field private e:I


# direct methods
.method constructor <init>(Lcom/subao/common/e/al;Lcom/subao/common/i/i;)V
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Lcom/subao/common/i/h$a;->b()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 234
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/subao/common/i/h$a;->e:I

    .line 247
    iput-object p1, p0, Lcom/subao/common/i/h$a;->b:Lcom/subao/common/e/al;

    .line 248
    iput-object p2, p0, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    .line 249
    invoke-interface {p2}, Lcom/subao/common/i/i;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/i/a;->a(Landroid/content/Context;)Lcom/subao/common/i/l;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/i/h$a;->d:Lcom/subao/common/i/l;

    .line 250
    new-instance v0, Lcom/subao/common/i/m;

    invoke-interface {p2}, Lcom/subao/common/i/i;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subao/common/i/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/subao/common/i/h$a;->c:Lcom/subao/common/i/m;

    .line 251
    return-void
.end method

.method static synthetic a(Lcom/subao/common/i/h$a;)I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/subao/common/i/h$a;->e:I

    return v0
.end method

.method private static b()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "subao_mu"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 256
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/subao/common/i/h$a;)Lcom/subao/common/i/l;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/subao/common/i/h$a;->d:Lcom/subao/common/i/l;

    return-object v0
.end method

.method private c()Lcom/subao/common/i/p$d;
    .locals 4

    .prologue
    .line 284
    new-instance v0, Lcom/subao/common/i/p$d;

    invoke-direct {p0}, Lcom/subao/common/i/h$a;->d()Lcom/subao/common/i/p$e;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    invoke-interface {v2}, Lcom/subao/common/i/i;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    invoke-interface {v3}, Lcom/subao/common/i/i;->b()Lcom/subao/common/j/j;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/subao/common/j/k;->a(Landroid/content/Context;Lcom/subao/common/j/j;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/subao/common/i/p$d;-><init>(Lcom/subao/common/i/p$e;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic c(Lcom/subao/common/i/h$a;)Lcom/subao/common/i/p$d;
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/subao/common/i/h$a;->c()Lcom/subao/common/i/p$d;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/subao/common/i/p$e;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    invoke-interface {v0}, Lcom/subao/common/i/i;->b()Lcom/subao/common/j/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/subao/common/j/j;->a()Lcom/subao/common/j/j$a;

    move-result-object v0

    .line 289
    if-nez v0, :cond_0

    .line 290
    sget-object v0, Lcom/subao/common/i/p$e;->a:Lcom/subao/common/i/p$e;

    .line 302
    :goto_0
    return-object v0

    .line 292
    :cond_0
    sget-object v1, Lcom/subao/common/i/h$1;->a:[I

    invoke-virtual {v0}, Lcom/subao/common/j/j$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 302
    sget-object v0, Lcom/subao/common/i/p$e;->a:Lcom/subao/common/i/p$e;

    goto :goto_0

    .line 294
    :pswitch_0
    sget-object v0, Lcom/subao/common/i/p$e;->c:Lcom/subao/common/i/p$e;

    goto :goto_0

    .line 296
    :pswitch_1
    sget-object v0, Lcom/subao/common/i/p$e;->d:Lcom/subao/common/i/p$e;

    goto :goto_0

    .line 298
    :pswitch_2
    sget-object v0, Lcom/subao/common/i/p$e;->e:Lcom/subao/common/i/p$e;

    goto :goto_0

    .line 300
    :pswitch_3
    sget-object v0, Lcom/subao/common/i/p$e;->b:Lcom/subao/common/i/p$e;

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method a()Lcom/subao/common/i/i;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    return-object v0
.end method
