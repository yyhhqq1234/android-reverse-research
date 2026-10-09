.class public Lcom/subao/common/a/c;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/a;
.implements Lcom/subao/common/a/a;
.implements Lcom/subao/common/b/d$a;
.implements Lcom/subao/common/b/d$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/a/c$x;,
        Lcom/subao/common/a/c$q;,
        Lcom/subao/common/a/c$h;,
        Lcom/subao/common/a/c$d;,
        Lcom/subao/common/a/c$c;,
        Lcom/subao/common/a/c$b;,
        Lcom/subao/common/a/c$r;,
        Lcom/subao/common/a/c$f;,
        Lcom/subao/common/a/c$g;,
        Lcom/subao/common/a/c$ag;,
        Lcom/subao/common/a/c$z;,
        Lcom/subao/common/a/c$y;,
        Lcom/subao/common/a/c$ab;,
        Lcom/subao/common/a/c$l;,
        Lcom/subao/common/a/c$aa;,
        Lcom/subao/common/a/c$i;,
        Lcom/subao/common/a/c$u;,
        Lcom/subao/common/a/c$o;,
        Lcom/subao/common/a/c$e;,
        Lcom/subao/common/a/c$v;,
        Lcom/subao/common/a/c$a;,
        Lcom/subao/common/a/c$k;,
        Lcom/subao/common/a/c$p;,
        Lcom/subao/common/a/c$t;,
        Lcom/subao/common/a/c$w;,
        Lcom/subao/common/a/c$n;,
        Lcom/subao/common/a/c$m;,
        Lcom/subao/common/a/c$j;,
        Lcom/subao/common/a/c$ae;,
        Lcom/subao/common/a/c$af;,
        Lcom/subao/common/a/c$ad;,
        Lcom/subao/common/a/c$s;,
        Lcom/subao/common/a/c$ac;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Lcom/subao/common/a/e$a;

.field private C:Z

.field private final D:Lcom/subao/common/e/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subao/common/e/i",
            "<",
            "Lcom/subao/common/e/al;",
            "Lcom/subao/common/intf/ProductList;",
            ">;"
        }
    .end annotation
.end field

.field private E:J

.field private final F:Lcom/subao/common/a/c$b;

.field final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Lcom/subao/common/j/h;

.field final e:Lcom/subao/common/e/aa;

.field final f:Lcom/subao/common/i/g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final g:Lcom/subao/common/b/q;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/subao/common/e/q$a;

.field private final j:I

.field private final k:Lcom/subao/common/e/u$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final l:Lcom/subao/common/g/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final m:Lcom/subao/common/e/ak;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final n:Lcom/subao/common/e/a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private o:Lcom/subao/common/a/c$f;

.field private p:Lcom/subao/common/a/c$s;

.field private q:I

.field private final r:Lcom/subao/common/a/c$af;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final s:Lcom/subao/common/i/i;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private t:I

.field private volatile u:Lcom/subao/common/intf/UserInfo;

.field private v:Lcom/subao/common/intf/AccelSwitchListener;

.field private w:Lcom/subao/common/intf/VPNStateListener;

.field private volatile x:Lcom/subao/common/intf/UserStateListener;

.field private y:Lcom/subao/common/e/al;

.field private z:Lcom/subao/common/e/ao;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/subao/common/e/q$a;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/h;Lcom/subao/common/g/c;Lcom/subao/common/e/ak;Z)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/q$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/subao/common/j/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/subao/common/g/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/subao/common/e/ak;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/subao/common/a/c;->t:I

    .line 211
    new-instance v0, Lcom/subao/common/b/q;

    invoke-direct {v0}, Lcom/subao/common/b/q;-><init>()V

    iput-object v0, p0, Lcom/subao/common/a/c;->g:Lcom/subao/common/b/q;

    .line 221
    new-instance v0, Lcom/subao/common/e/i;

    const-wide/32 v2, 0x36ee80

    invoke-direct {v0, v2, v3}, Lcom/subao/common/e/i;-><init>(J)V

    iput-object v0, p0, Lcom/subao/common/a/c;->D:Lcom/subao/common/e/i;

    .line 252
    invoke-static {p1, p3, p6}, Lcom/subao/common/f/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/subao/common/g/c;)V

    .line 254
    sput-object p2, Lcom/subao/common/e/q;->b:Lcom/subao/common/e/q$a;

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/a/c;->h:Landroid/content/Context;

    .line 257
    iput-object p2, p0, Lcom/subao/common/a/c;->i:Lcom/subao/common/e/q$a;

    .line 258
    iget-object v0, p0, Lcom/subao/common/a/c;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/subao/common/a/c;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/subao/common/a/c;->j:I

    .line 259
    iput-object p3, p0, Lcom/subao/common/a/c;->a:Ljava/lang/String;

    .line 260
    iput-object p4, p0, Lcom/subao/common/a/c;->b:Ljava/lang/String;

    .line 261
    invoke-static {p1}, Lcom/subao/common/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/a/c;->c:Ljava/lang/String;

    .line 262
    iput-object p6, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    .line 263
    iput-object p5, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    .line 264
    if-nez p7, :cond_3

    new-instance v0, Lcom/subao/common/e/ak;

    invoke-direct {v0}, Lcom/subao/common/e/ak;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    .line 265
    invoke-direct {p0, p3}, Lcom/subao/common/a/c;->c(Ljava/lang/String;)Lcom/subao/common/a/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/a/c;->F:Lcom/subao/common/a/c$b;

    .line 266
    invoke-static {p6}, Lcom/subao/common/f$a;->a(Lcom/subao/common/f;)V

    .line 269
    invoke-static {p1, p2}, Lcom/subao/common/f/a;->a(Landroid/content/Context;Lcom/subao/common/e/q$a;)Ljava/io/File;

    .line 270
    new-instance v0, Lcom/subao/common/e/aa;

    new-instance v1, Ljava/io/File;

    .line 271
    invoke-static {}, Lcom/subao/common/f/a;->a()Ljava/io/File;

    move-result-object v2

    const-string v3, "proxy_data"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    invoke-static {v1}, Lcom/subao/common/f/d;->a(Ljava/io/File;)Lcom/subao/common/f/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subao/common/e/aa;-><init>(Lcom/subao/common/f/c;)V

    iput-object v0, p0, Lcom/subao/common/a/c;->e:Lcom/subao/common/e/aa;

    .line 274
    invoke-direct {p0, p1}, Lcom/subao/common/a/c;->c(Landroid/content/Context;)V

    .line 276
    if-nez p7, :cond_0

    .line 277
    iget-object v0, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/subao/common/e/ak;->b(Ljava/io/File;Lcom/subao/common/e/q$a;)Z

    .line 280
    :cond_0
    new-instance v0, Lcom/subao/common/a/c$p;

    .line 281
    invoke-virtual {p0}, Lcom/subao/common/a/c;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    .line 283
    invoke-virtual {v2}, Lcom/subao/common/e/ak;->c()Lcom/subao/common/e/al;

    move-result-object v2

    iget-object v3, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    invoke-direct {v0, v1, p4, v2, v3}, Lcom/subao/common/a/c$p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/j/j;)V

    .line 286
    new-instance v1, Lcom/subao/common/e/a;

    new-instance v2, Lcom/subao/common/a/c$q;

    invoke-direct {v2, p6}, Lcom/subao/common/a/c$q;-><init>(Lcom/subao/common/g/c;)V

    invoke-direct {v1, p2, v0, p6, v2}, Lcom/subao/common/e/a;-><init>(Lcom/subao/common/e/q$a;Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;Lcom/subao/common/e/af$a;)V

    iput-object v1, p0, Lcom/subao/common/a/c;->n:Lcom/subao/common/e/a;

    .line 295
    new-instance v0, Lcom/subao/common/a/c$af;

    invoke-direct {v0, p0, p6}, Lcom/subao/common/a/c$af;-><init>(Lcom/subao/common/a/c;Lcom/subao/common/g/c;)V

    iput-object v0, p0, Lcom/subao/common/a/c;->r:Lcom/subao/common/a/c$af;

    .line 297
    new-instance v0, Lcom/subao/common/i/j;

    iget-object v2, p0, Lcom/subao/common/a/c;->i:Lcom/subao/common/e/q$a;

    iget-object v5, p0, Lcom/subao/common/a/c;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    new-instance v7, Lcom/subao/common/i/f;

    new-instance v1, Lcom/subao/common/a/c$j;

    invoke-direct {v1}, Lcom/subao/common/a/c$j;-><init>()V

    invoke-direct {v7, v1}, Lcom/subao/common/i/f;-><init>(Lcom/subao/common/i/f$b;)V

    move-object v1, p1

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/subao/common/i/j;-><init>(Landroid/content/Context;Lcom/subao/common/e/q$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/j;Lcom/subao/common/i/f;)V

    iput-object v0, p0, Lcom/subao/common/a/c;->s:Lcom/subao/common/i/i;

    .line 305
    iget-object v0, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    invoke-virtual {v0}, Lcom/subao/common/e/ak;->j()Lcom/subao/common/e/al;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/a/c;->y:Lcom/subao/common/e/al;

    .line 306
    iget-object v0, p0, Lcom/subao/common/a/c;->y:Lcom/subao/common/e/al;

    if-nez v0, :cond_1

    .line 307
    new-instance v0, Lcom/subao/common/e/al;

    const/4 v1, 0x0

    sget-object v2, Lcom/subao/common/e/f$a;->d:Lcom/subao/common/e/f$a;

    iget-object v2, v2, Lcom/subao/common/e/f$a;->a:Ljava/lang/String;

    sget-object v3, Lcom/subao/common/e/f$a;->d:Lcom/subao/common/e/f$a;

    iget v3, v3, Lcom/subao/common/e/f$a;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/e/al;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/subao/common/a/c;->y:Lcom/subao/common/e/al;

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/subao/common/a/c;->y:Lcom/subao/common/e/al;

    iget-object v1, p0, Lcom/subao/common/a/c;->s:Lcom/subao/common/i/i;

    invoke-static {v0, v1}, Lcom/subao/common/i/h;->a(Lcom/subao/common/e/al;Lcom/subao/common/i/i;)Lcom/subao/common/i/g;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    .line 316
    new-instance v0, Lcom/subao/common/e/u$a;

    .line 317
    invoke-virtual {p0}, Lcom/subao/common/a/c;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    .line 319
    invoke-virtual {v2}, Lcom/subao/common/e/ak;->i()Lcom/subao/common/e/al;

    move-result-object v2

    iget-object v3, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    invoke-direct {v0, v1, p4, v2, v3}, Lcom/subao/common/e/u$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/j/j;)V

    iput-object v0, p0, Lcom/subao/common/a/c;->k:Lcom/subao/common/e/u$a;

    .line 322
    if-eqz p8, :cond_2

    .line 323
    new-instance v0, Lcom/subao/common/a/d;

    iget-object v2, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    iget-object v3, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    new-instance v4, Lcom/subao/common/a/c$a;

    iget-object v1, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    iget-object v5, p0, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    invoke-direct {v4, v1, v5, p4}, Lcom/subao/common/a/c$a;-><init>(Lcom/subao/common/j/j;Lcom/subao/common/i/g;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/subao/common/a/c;->y:Lcom/subao/common/e/al;

    iget-object v6, p0, Lcom/subao/common/a/c;->k:Lcom/subao/common/e/u$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/a/d;-><init>(Lcom/subao/common/a/c;Lcom/subao/common/g/c;Lcom/subao/common/j/j;Lcom/subao/common/a/c$a;Lcom/subao/common/e/al;Lcom/subao/common/e/u$a;)V

    .line 330
    invoke-virtual {p0, v0}, Lcom/subao/common/a/c;->a(Lcom/subao/vpn/JniCallback;)V

    .line 332
    :cond_2
    return-void

    :cond_3
    move-object v0, p7

    .line 264
    goto/16 :goto_0
.end method

.method static synthetic F()J
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/subao/common/a/c;->G()J

    move-result-wide v0

    return-wide v0
.end method

.method private static G()J
    .locals 2

    .prologue
    .line 375
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private H()Lcom/subao/common/a/e;
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/subao/common/a/c;->B:Lcom/subao/common/a/e$a;

    .line 1462
    if-eqz v0, :cond_0

    .line 1463
    invoke-interface {v0}, Lcom/subao/common/a/e$a;->a()Lcom/subao/common/a/e;

    move-result-object v0

    .line 1465
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/subao/common/a/c;)Lcom/subao/common/g/c;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    return-object v0
.end method

.method static a(Lcom/subao/common/g/a;)Lcom/subao/common/j/l;
    .locals 2

    .prologue
    .line 423
    sget-object v0, Lcom/subao/common/a/c$2;->a:[I

    invoke-virtual {p0}, Lcom/subao/common/g/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 429
    sget-object v0, Lcom/subao/common/j/l;->c:Lcom/subao/common/j/l;

    :goto_0
    return-object v0

    .line 425
    :pswitch_0
    sget-object v0, Lcom/subao/common/j/l;->b:Lcom/subao/common/j/l;

    goto :goto_0

    .line 427
    :pswitch_1
    sget-object v0, Lcom/subao/common/j/l;->a:Lcom/subao/common/j/l;

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    invoke-static {p0}, Lcom/subao/common/n/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    const-string v0, "Unknown-IMSI"

    .line 383
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 392
    const-string v0, "http://service.xunyou.mobi/?appid=%s&userid=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 393
    invoke-static {p0}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 392
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/e/q$a;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 398
    if-gez v0, :cond_0

    .line 404
    :goto_0
    return-object p1

    .line 401
    :cond_0
    sget-object v1, Lcom/subao/common/e/q$a;->d:Lcom/subao/common/e/q$a;

    if-ne p3, v1, :cond_1

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 404
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 848
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const-string v0, "SubaoGame"

    const-string v1, "setUserToken(%s, %s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    new-instance v0, Lcom/subao/common/intf/UserInfo;

    invoke-direct {v0, p2, p3, p4}, Lcom/subao/common/intf/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/subao/common/a/c;->u:Lcom/subao/common/intf/UserInfo;

    .line 852
    invoke-static {p2}, Lcom/subao/common/i/k;->b(Ljava/lang/String;)V

    .line 853
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/subao/common/j/d;->a(ZLcom/subao/common/e/al;)V

    .line 854
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/subao/common/g/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    if-eqz p7, :cond_1

    .line 856
    invoke-virtual {p0}, Lcom/subao/common/a/c;->x()I

    move-result v7

    .line 857
    invoke-virtual {p0}, Lcom/subao/common/a/c;->w()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-wide v2, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object v6, p2

    .line 858
    invoke-static/range {v1 .. v8}, Lcom/subao/common/a/c$y;->a(Lcom/subao/common/a/c;JLcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    .line 864
    :cond_1
    return-void
.end method

.method private a(Lcom/subao/common/e/q$a;)V
    .locals 3

    .prologue
    .line 676
    sget-object v0, Lcom/subao/common/e/q$a;->a:Lcom/subao/common/e/q$a;

    if-eq p1, v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const-string v1, "C.Auth.RequestTimeout"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/subao/common/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const-string v1, "C.Auth.UserAuthRetryUpbound"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/subao/common/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/subao/common/g/c;III)V
    .locals 0

    .prologue
    .line 124
    invoke-static {p0, p1, p2, p3}, Lcom/subao/common/a/c;->b(Lcom/subao/common/g/c;III)V

    return-void
.end method

.method private static b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 388
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/subao/common/a/c;)Lcom/subao/common/e/a;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/subao/common/a/c;->n:Lcom/subao/common/e/a;

    return-object v0
.end method

.method private static b(Lcom/subao/common/g/c;III)V
    .locals 7

    .prologue
    .line 409
    invoke-static {p2}, Lcom/subao/common/b;->a(I)Z

    move-result v0

    .line 410
    const-string v1, "SubaoParallel"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    const-string v1, "SubaoParallel"

    sget-object v2, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v3, "requestMobileFD() return fd=%d, error=%d, canRetry=%b"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/subao/common/g/c;->a(IIIZ)V

    .line 414
    return-void
.end method

.method static synthetic c(Lcom/subao/common/a/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/subao/common/a/c;->h:Landroid/content/Context;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/subao/common/a/c$b;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    const-string v0, "D72C7B0F-B835-46BE-B0C6-5CA60CCED8AF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcom/subao/common/a/c$d;

    invoke-direct {v0, p0, v1}, Lcom/subao/common/a/c$d;-><init>(Lcom/subao/common/a/c;Lcom/subao/common/a/c$1;)V

    .line 339
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/subao/common/a/c$c;

    invoke-direct {v0, v1}, Lcom/subao/common/a/c$c;-><init>(Lcom/subao/common/a/c$1;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 533
    invoke-static {}, Lcom/subao/common/e/am;->b()Lcom/subao/common/e/am;

    move-result-object v0

    .line 534
    new-instance v1, Lcom/subao/common/a/c$1;

    invoke-direct {v1, p0}, Lcom/subao/common/a/c$1;-><init>(Lcom/subao/common/a/c;)V

    invoke-virtual {v0, v1}, Lcom/subao/common/e/am;->a(Ljava/lang/Object;)Z

    .line 541
    invoke-virtual {v0, p1}, Lcom/subao/common/e/am;->a(Landroid/content/Context;)V

    .line 542
    invoke-static {}, Lcom/subao/common/e/am;->b()Lcom/subao/common/e/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subao/common/e/am;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/i/k;->a(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method static synthetic d(Lcom/subao/common/a/c;)Lcom/subao/common/a/c$f;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/subao/common/a/c;->o:Lcom/subao/common/a/c$f;

    return-object v0
.end method

.method static synthetic e(Lcom/subao/common/a/c;)Lcom/subao/common/e/ak;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    return-object v0
.end method

.method static synthetic f(Lcom/subao/common/a/c;)Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/subao/common/a/c;->C:Z

    return v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->c()V

    .line 1337
    return-void
.end method

.method public declared-synchronized B()I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1423
    monitor-enter p0

    :try_start_0
    const-string v1, "SubaoGame"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 1427
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    .line 1428
    const/16 v0, 0x1f47

    .line 1454
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1455
    const-string v1, "SubaoGame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openVPN() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    :cond_1
    monitor-exit p0

    return v0

    .line 1431
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/subao/common/a/c;->B:Lcom/subao/common/a/e$a;

    .line 1432
    if-nez v2, :cond_3

    .line 1433
    const/16 v0, 0x1f4b

    .line 1434
    goto :goto_0

    .line 1436
    :cond_3
    invoke-interface {v2}, Lcom/subao/common/a/e$a;->a()Lcom/subao/common/a/e;

    move-result-object v3

    .line 1437
    if-eqz v3, :cond_6

    .line 1438
    if-eqz v1, :cond_4

    .line 1439
    const-string v0, "SubaoGame"

    const-string v2, "Service already exists, call startProxy() ..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/subao/common/a/c;->c(Z)Lcom/subao/common/e/ao;

    move-result-object v0

    .line 1442
    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/subao/common/a/e;->a(Ljava/lang/Iterable;)I

    move-result v0

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/subao/common/e/ao$c;

    invoke-direct {v2}, Lcom/subao/common/e/ao$c;-><init>()V

    const/4 v4, 0x0

    .line 1445
    invoke-virtual {v0, v2, v4}, Lcom/subao/common/e/ao;->a(Lcom/subao/common/e/ao$a;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 1448
    :cond_6
    iget-object v3, p0, Lcom/subao/common/a/c;->h:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/subao/common/a/e$a;->a(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1451
    const/16 v0, 0x1f48

    goto :goto_0

    .line 1423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized C()V
    .locals 1

    .prologue
    .line 1472
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/subao/common/a/c;->H()Lcom/subao/common/a/e;

    move-result-object v0

    .line 1473
    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {v0}, Lcom/subao/common/a/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    :cond_0
    monitor-exit p0

    return-void

    .line 1472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 1482
    invoke-direct {p0}, Lcom/subao/common/a/c;->H()Lcom/subao/common/a/e;

    move-result-object v0

    .line 1483
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/subao/common/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1517
    invoke-static {}, Lcom/subao/common/j/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)I
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/subao/common/a/c;->w:Lcom/subao/common/intf/VPNStateListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/subao/common/a/c$z;->a(Lcom/subao/common/intf/VPNStateListener;Z)V

    .line 742
    iget-object v0, p0, Lcom/subao/common/a/c;->p:Lcom/subao/common/a/c$s;

    if-nez v0, :cond_0

    .line 744
    const/16 v0, 0x3e8

    .line 754
    :goto_0
    return v0

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/subao/common/a/c;->i:Lcom/subao/common/e/q$a;

    sget-object v1, Lcom/subao/common/e/q$a;->a:Lcom/subao/common/e/q$a;

    if-ne v0, v1, :cond_1

    .line 747
    const/16 v0, 0x3eb

    goto :goto_0

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1}, Lcom/subao/common/g/c;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    invoke-virtual {p0}, Lcom/subao/common/a/c;->o()I

    .line 752
    const/4 v0, 0x0

    goto :goto_0

    .line 754
    :cond_2
    const/16 v0, 0x3e9

    goto :goto_0
.end method

.method public a(Lcom/subao/common/g/a;Ljava/lang/String;Ljava/lang/String;I[B)I
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 596
    invoke-static {p0}, Lcom/subao/common/a/c$i;->a(Lcom/subao/common/a/c;)I

    move-result v0

    .line 597
    if-eqz v0, :cond_1

    move v8, v0

    .line 669
    :cond_0
    :goto_0
    return v8

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    .line 602
    invoke-virtual {v0}, Lcom/subao/common/e/ak;->i()Lcom/subao/common/e/al;

    move-result-object v0

    .line 603
    invoke-virtual {p0}, Lcom/subao/common/a/c;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ac5"

    .line 606
    invoke-static {v2}, Lcom/subao/common/f/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/subao/common/f/d;->a(Ljava/io/File;)Lcom/subao/common/f/c;

    move-result-object v2

    .line 601
    invoke-static {v0, v1, v2}, Lcom/subao/common/b/b;->a(Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/f/c;)V

    .line 608
    iget-object v0, p0, Lcom/subao/common/a/c;->n:Lcom/subao/common/e/a;

    iget-object v1, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    invoke-virtual {v1}, Lcom/subao/common/e/ak;->d()Lcom/subao/common/e/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subao/common/e/a;->a(Lcom/subao/common/e/e$a;)V

    .line 609
    iget-object v0, p0, Lcom/subao/common/a/c;->n:Lcom/subao/common/e/a;

    invoke-virtual {v0, p5}, Lcom/subao/common/e/a;->a([B)V

    .line 611
    iget-object v0, p0, Lcom/subao/common/a/c;->n:Lcom/subao/common/e/a;

    iget-object v1, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v1}, Lcom/subao/common/g/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subao/common/e/a;->a(I)[B

    move-result-object v4

    .line 613
    iget-object v0, p0, Lcom/subao/common/a/c;->n:Lcom/subao/common/e/a;

    invoke-virtual {v0}, Lcom/subao/common/e/a;->a()Lcom/subao/common/e/e$a;

    move-result-object v1

    .line 614
    if-nez v1, :cond_4

    move v0, v8

    :goto_1
    iput v0, p0, Lcom/subao/common/a/c;->q:I

    .line 616
    iget-object v0, p0, Lcom/subao/common/a/c;->n:Lcom/subao/common/e/a;

    invoke-virtual {v0}, Lcom/subao/common/e/a;->b()Ljava/lang/String;

    move-result-object v6

    .line 618
    iget-object v0, p0, Lcom/subao/common/a/c;->n:Lcom/subao/common/e/a;

    invoke-virtual {v0}, Lcom/subao/common/e/a;->c()Ljava/lang/String;

    move-result-object v7

    .line 620
    if-nez v1, :cond_5

    move-object v5, v9

    .line 624
    :goto_2
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    iget-object v1, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    .line 625
    invoke-virtual {v1}, Lcom/subao/common/j/h;->a()Lcom/subao/common/j/j$a;

    move-result-object v1

    iget v1, v1, Lcom/subao/common/j/j$a;->g:I

    move-object v2, p1

    move-object v3, p2

    .line 624
    invoke-virtual/range {v0 .. v7}, Lcom/subao/common/g/c;->a(ILcom/subao/common/g/a;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 633
    if-eqz v2, :cond_3

    .line 634
    invoke-static {p1}, Lcom/subao/common/a/c$i;->a(Lcom/subao/common/g/a;)V

    .line 635
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    iget-object v1, p0, Lcom/subao/common/a/c;->i:Lcom/subao/common/e/q$a;

    invoke-static {v0, v1}, Lcom/subao/common/a/c$i;->a(Lcom/subao/common/g/c;Lcom/subao/common/e/q$a;)V

    .line 636
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const-string v1, "key_sdk_guid"

    iget-object v3, p0, Lcom/subao/common/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v8, v1, v3}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 637
    sget-object v0, Lcom/subao/common/g/a;->c:Lcom/subao/common/g/a;

    if-ne p1, v0, :cond_6

    .line 638
    iget-object v0, p0, Lcom/subao/common/a/c;->n:Lcom/subao/common/e/a;

    iget-object v1, p0, Lcom/subao/common/a/c;->h:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/subao/common/a/c;->C:Z

    invoke-virtual {v0, v1, v3}, Lcom/subao/common/e/a;->a(Landroid/content/Context;Z)Lcom/subao/common/e/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/a/c;->z:Lcom/subao/common/e/ao;

    .line 642
    :goto_3
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-static {v0, p4}, Lcom/subao/common/a/c$i;->a(Lcom/subao/common/g/c;I)V

    .line 643
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const-string v1, "key_set_imsi"

    iget-object v3, p0, Lcom/subao/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v8, v1, v3}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/subao/common/a/c;->n:Lcom/subao/common/e/a;

    invoke-virtual {v0}, Lcom/subao/common/e/a;->d()V

    .line 645
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-static {v0}, Lcom/subao/common/a/c$i;->a(Lcom/subao/common/g/c;)Lcom/subao/common/a/c$s;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/a/c;->p:Lcom/subao/common/a/c$s;

    .line 647
    iget-object v0, p0, Lcom/subao/common/a/c;->s:Lcom/subao/common/i/i;

    invoke-interface {v0}, Lcom/subao/common/i/i;->e()Lcom/subao/common/i/a;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/i/a;->a()Lcom/subao/common/i/r;

    move-result-object v3

    invoke-virtual {v0}, Lcom/subao/common/i/a;->b()Lcom/subao/common/i/m;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/subao/common/g/c;->a(Lcom/subao/common/i/r;Lcom/subao/common/i/m;)V

    .line 651
    sget-object v0, Lcom/subao/common/g/a;->c:Lcom/subao/common/g/a;

    if-ne p1, v0, :cond_2

    .line 652
    iget-object v0, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    invoke-virtual {v0}, Lcom/subao/common/e/ak;->g()Ljava/lang/Integer;

    move-result-object v0

    .line 653
    new-instance v3, Lcom/subao/common/a/c$g;

    .line 654
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Lcom/subao/common/a/c$g;-><init>(Lcom/subao/common/a/c;Lcom/subao/common/m/a;)V

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    .line 653
    :goto_4
    invoke-static {v3, v0, v1}, Lcom/subao/common/a/c$f;->a(Lcom/subao/common/a/c$f$a;J)Lcom/subao/common/a/c$f;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/a/c;->o:Lcom/subao/common/a/c$f;

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    new-instance v1, Lcom/subao/common/a/c$k;

    invoke-direct {v1, p0, v9}, Lcom/subao/common/a/c$k;-><init>(Lcom/subao/common/a/c;Lcom/subao/common/a/c$1;)V

    invoke-virtual {v0, v1}, Lcom/subao/common/j/h;->a(Lcom/subao/common/j/h$a;)V

    .line 661
    iget-object v0, p0, Lcom/subao/common/a/c;->i:Lcom/subao/common/e/q$a;

    invoke-direct {p0, v0}, Lcom/subao/common/a/c;->a(Lcom/subao/common/e/q$a;)V

    .line 664
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/a/c$x;->a(Ljava/lang/String;)V

    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/subao/common/a/c;->d(Z)V

    .line 669
    :cond_3
    if-nez v2, :cond_0

    const/4 v8, -0x1

    goto/16 :goto_0

    .line 614
    :cond_4
    iget v0, v1, Lcom/subao/common/e/e$a;->a:I

    goto/16 :goto_1

    .line 620
    :cond_5
    iget-object v5, v1, Lcom/subao/common/e/e$a;->b:Ljava/lang/String;

    goto/16 :goto_2

    .line 640
    :cond_6
    iget-object v0, p0, Lcom/subao/common/a/c;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-static {p1}, Lcom/subao/common/a/c;->a(Lcom/subao/common/g/a;)Lcom/subao/common/j/l;

    move-result-object v3

    invoke-static {v0, v1, v3, p3}, Lcom/subao/common/a/c$i;->a(Landroid/content/Context;Lcom/subao/common/g/c;Lcom/subao/common/j/l;Ljava/lang/String;)V

    goto :goto_3

    .line 655
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    goto :goto_4
.end method

.method public a()V
    .locals 2

    .prologue
    .line 547
    monitor-enter p0

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/a/c;->p:Lcom/subao/common/a/c$s;

    .line 549
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/subao/common/a/c;->p:Lcom/subao/common/a/c$s;

    .line 550
    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Lcom/subao/common/a/c$s;->a()V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->a()V

    .line 554
    iget-object v0, p0, Lcom/subao/common/a/c;->r:Lcom/subao/common/a/c$af;

    invoke-virtual {v0}, Lcom/subao/common/a/c$af;->a()V

    .line 555
    monitor-exit p0

    .line 556
    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(FFFFFI)V
    .locals 8

    .prologue
    .line 1255
    new-instance v0, Lcom/subao/common/i/p$c;

    float-to-double v2, p2

    .line 1256
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v6, 0x0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/subao/common/i/p$c;-><init>(FFFFFFI)V

    .line 1258
    iget-object v1, p0, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    invoke-interface {v1, v0}, Lcom/subao/common/i/g;->a(Lcom/subao/common/i/p$c;)V

    .line 1259
    const-string v1, "SubaoGame"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 1260
    if-eqz v1, :cond_0

    .line 1261
    const-string v1, "SubaoGame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetDelayQualityV3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/subao/common/i/p$c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_0
    return-void
.end method

.method public a(IJLcom/subao/common/intf/NodeDetectCallback;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1}, Lcom/subao/common/g/c;->e(I)V

    .line 1508
    if-eqz p4, :cond_0

    .line 1509
    invoke-static/range {p0 .. p5}, Lcom/subao/common/a/c$l;->a(Lcom/subao/common/a/c;IJLcom/subao/common/intf/NodeDetectCallback;Ljava/lang/Object;)V

    .line 1511
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1, p2}, Lcom/subao/common/g/c;->a(IZ)V

    .line 1361
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 796
    iput-wide p1, p0, Lcom/subao/common/a/c;->E:J

    .line 797
    return-void
.end method

.method public a(JLcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 912
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    const-string v0, "SubaoGame"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "refreshXunyouUserState(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    iget-object v1, p0, Lcom/subao/common/a/c;->u:Lcom/subao/common/intf/UserInfo;

    .line 916
    if-nez v1, :cond_1

    .line 917
    new-instance v0, Lcom/subao/common/a/c$ag;

    invoke-direct {v0, p3}, Lcom/subao/common/a/c$ag;-><init>(Lcom/subao/common/intf/XunyouUserStateCallback;)V

    .line 918
    const/4 v1, 0x0

    const/16 v3, 0x3ec

    const-string v5, ""

    move-object v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/subao/common/a/c$ag;->onXunyouUserState(Lcom/subao/common/intf/UserInfo;Ljava/lang/Object;IILjava/lang/String;)V

    .line 930
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 921
    invoke-virtual/range {v0 .. v6}, Lcom/subao/common/a/c;->a(Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public a(Lcom/subao/common/a/e$a;)V
    .locals 1

    .prologue
    .line 564
    if-nez p1, :cond_0

    .line 565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 567
    :cond_0
    iput-object p1, p0, Lcom/subao/common/a/c;->B:Lcom/subao/common/a/e$a;

    .line 568
    return-void
.end method

.method public declared-synchronized a(Lcom/subao/common/intf/AccelSwitchListener;)V
    .locals 1

    .prologue
    .line 783
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/subao/common/a/c;->v:Lcom/subao/common/intf/AccelSwitchListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    monitor-exit p0

    return-void

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/subao/common/intf/QueryProductCallback;Z)V
    .locals 6
    .param p1    # Lcom/subao/common/intf/QueryProductCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    .line 1037
    invoke-virtual {v0}, Lcom/subao/common/e/ak;->h()Lcom/subao/common/e/al;

    move-result-object v3

    iget-object v4, p0, Lcom/subao/common/a/c;->D:Lcom/subao/common/e/i;

    iget-object v5, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1035
    invoke-virtual/range {v0 .. v5}, Lcom/subao/common/a/c;->a(Lcom/subao/common/intf/QueryProductCallback;ZLcom/subao/common/e/al;Lcom/subao/common/e/i;Lcom/subao/common/j/j;)V

    .line 1039
    return-void
.end method

.method a(Lcom/subao/common/intf/QueryProductCallback;ZLcom/subao/common/e/al;Lcom/subao/common/e/i;Lcom/subao/common/j/j;)V
    .locals 3
    .param p1    # Lcom/subao/common/intf/QueryProductCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/subao/common/e/al;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/subao/common/e/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/subao/common/j/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/intf/QueryProductCallback;",
            "Z",
            "Lcom/subao/common/e/al;",
            "Lcom/subao/common/e/i",
            "<",
            "Lcom/subao/common/e/al;",
            "Lcom/subao/common/intf/ProductList;",
            ">;",
            "Lcom/subao/common/j/j;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1049
    if-eqz p2, :cond_0

    .line 1050
    invoke-virtual {p4, p3, v1}, Lcom/subao/common/e/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 1055
    :goto_0
    if-nez v0, :cond_2

    .line 1057
    invoke-interface {p5}, Lcom/subao/common/j/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1058
    const/16 v0, 0x3ed

    invoke-interface {p1, v0, v1}, Lcom/subao/common/intf/QueryProductCallback;->onQueryProductResult(ILcom/subao/common/intf/ProductList;)V

    .line 1070
    :goto_1
    return-void

    .line 1053
    :cond_0
    invoke-virtual {p4, p3}, Lcom/subao/common/e/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/intf/ProductList;

    goto :goto_0

    .line 1060
    :cond_1
    new-instance v0, Lcom/subao/common/c/e;

    .line 1061
    invoke-virtual {p0}, Lcom/subao/common/a/c;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/subao/common/a/c$r;

    invoke-direct {v2, p1, p3, p4}, Lcom/subao/common/a/c$r;-><init>(Lcom/subao/common/intf/QueryProductCallback;Lcom/subao/common/e/al;Lcom/subao/common/e/i;)V

    invoke-direct {v0, v1, p3, v2}, Lcom/subao/common/c/e;-><init>(Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/c/e$a;)V

    .line 1064
    invoke-static {v0}, Lcom/subao/common/m/d;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1068
    :cond_2
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/subao/common/intf/QueryProductCallback;->onQueryProductResult(ILcom/subao/common/intf/ProductList;)V

    goto :goto_1
.end method

.method public a(Lcom/subao/common/intf/QuerySignCouponsCallback;)V
    .locals 4
    .param p1    # Lcom/subao/common/intf/QuerySignCouponsCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 1127
    iget-object v0, p0, Lcom/subao/common/a/c;->u:Lcom/subao/common/intf/UserInfo;

    .line 1128
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1129
    :goto_0
    if-nez v0, :cond_1

    .line 1130
    const/16 v0, 0x3ec

    invoke-interface {p1, v0, v1}, Lcom/subao/common/intf/QuerySignCouponsCallback;->onQuerySignCouponsResult(ILjava/util/List;)V

    .line 1136
    :goto_1
    return-void

    .line 1128
    :cond_0
    invoke-virtual {v0}, Lcom/subao/common/intf/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1132
    :cond_1
    invoke-virtual {p0}, Lcom/subao/common/a/c;->k()Lcom/subao/common/e/u$a;

    move-result-object v1

    new-instance v2, Lcom/subao/common/a/c$h;

    invoke-direct {v2, p1}, Lcom/subao/common/a/c$h;-><init>(Lcom/subao/common/intf/QuerySignCouponsCallback;)V

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/subao/common/b/b;->a(Lcom/subao/common/e/u$a;Ljava/lang/String;Lcom/subao/common/e/t$a;Z)V

    goto :goto_1
.end method

.method public a(Lcom/subao/common/intf/UserInfo;ILcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;)V
    .locals 7
    .param p1    # Lcom/subao/common/intf/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 992
    iget-object v0, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    invoke-virtual {v0}, Lcom/subao/common/j/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    const/16 v0, 0x3ed

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;->onThirdPartyAuthInfoResult(ILcom/subao/common/intf/ThirdPartyAuthInfo;)V

    .line 1008
    :goto_0
    return-void

    .line 996
    :cond_0
    if-gtz p2, :cond_1

    .line 997
    const/16 v5, 0x1f40

    .line 999
    :goto_1
    new-instance v0, Lcom/subao/common/b/l;

    .line 1000
    invoke-virtual {p0}, Lcom/subao/common/a/c;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    .line 1001
    invoke-virtual {v2}, Lcom/subao/common/e/ak;->i()Lcom/subao/common/e/al;

    move-result-object v2

    iget-object v3, p0, Lcom/subao/common/a/c;->b:Ljava/lang/String;

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/b/l;-><init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/intf/UserInfo;ILcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;)V

    .line 1007
    invoke-static {v0}, Lcom/subao/common/m/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    move v5, p2

    goto :goto_1
.end method

.method public a(Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/QueryOriginUserStateCallback;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 964
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    const-string v0, "SubaoGame"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "queryOriginUserState(%s, %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/subao/common/intf/UserInfo;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    iget-object v1, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    .line 969
    invoke-virtual {v1}, Lcom/subao/common/e/ak;->i()Lcom/subao/common/e/al;

    move-result-object v1

    .line 970
    invoke-virtual {p0}, Lcom/subao/common/a/c;->l()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x3a98

    move-object v3, p1

    move-object v6, p4

    move-object v7, p5

    .line 967
    invoke-static/range {v0 .. v7}, Lcom/subao/common/b/j;->a(Lcom/subao/common/j/j;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/QueryOriginUserStateCallback;Ljava/lang/Object;)V

    .line 974
    return-void
.end method

.method public a(Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;Z)V
    .locals 10

    .prologue
    .line 886
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    const-string v0, "SubaoGame"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "queryXunyouUserState(%s, %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/subao/common/intf/UserInfo;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    iput-object p1, p0, Lcom/subao/common/a/c;->u:Lcom/subao/common/intf/UserInfo;

    .line 890
    invoke-virtual {p1}, Lcom/subao/common/intf/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/i/k;->b(Ljava/lang/String;)V

    .line 891
    new-instance v0, Lcom/subao/common/a/c$ag;

    invoke-direct {v0, p4}, Lcom/subao/common/a/c$ag;-><init>(Lcom/subao/common/intf/XunyouUserStateCallback;)V

    .line 892
    if-eqz p6, :cond_2

    .line 893
    iget-object v1, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    invoke-virtual {v1}, Lcom/subao/common/j/h;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 894
    const/16 v3, 0x3ed

    const/4 v4, 0x0

    const-string v5, ""

    move-object v1, p1

    move-object v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/subao/common/a/c$ag;->onXunyouUserState(Lcom/subao/common/intf/UserInfo;Ljava/lang/Object;IILjava/lang/String;)V

    .line 901
    :goto_0
    return-void

    .line 897
    :cond_1
    invoke-virtual {p1}, Lcom/subao/common/intf/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/subao/common/b/b;->a(Ljava/lang/String;)V

    .line 899
    :cond_2
    iget-object v1, p0, Lcom/subao/common/a/c;->g:Lcom/subao/common/b/q;

    invoke-virtual {v1, p1, v0, p5}, Lcom/subao/common/b/q;->a(Lcom/subao/common/intf/UserInfo;Lcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;)I

    move-result v2

    .line 900
    invoke-virtual {p1}, Lcom/subao/common/intf/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/subao/common/intf/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/subao/common/intf/UserInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/subao/common/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/subao/common/intf/UserStateListener;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/subao/common/a/c;->x:Lcom/subao/common/intf/UserStateListener;

    .line 805
    return-void
.end method

.method public a(Lcom/subao/common/intf/VPNStateListener;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/subao/common/a/c;->w:Lcom/subao/common/intf/VPNStateListener;

    .line 792
    return-void
.end method

.method public a(Lcom/subao/vpn/JniCallback;)V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1}, Lcom/subao/common/g/c;->a(Lcom/subao/vpn/JniCallback;)Lcom/subao/vpn/JniCallback;

    .line 480
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const/4 v1, 0x0

    const-string v2, "key_game_server_id"

    invoke-virtual {v0, v1, v2, p1}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 1310
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1, p2}, Lcom/subao/common/g/c;->a(Ljava/lang/String;I)V

    .line 1242
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/subao/common/g/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1341
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/intf/RequestBuyCallback;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/subao/common/intf/RequestBuyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    invoke-virtual {v0}, Lcom/subao/common/e/ak;->h()Lcom/subao/common/e/al;

    move-result-object v5

    iget-object v6, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/subao/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/intf/RequestBuyCallback;Lcom/subao/common/e/al;Lcom/subao/common/j/j;)V

    .line 1082
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/intf/RequestBuyCallback;Lcom/subao/common/e/al;Lcom/subao/common/j/j;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/subao/common/intf/RequestBuyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/subao/common/e/al;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/subao/common/j/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x3f1

    const/4 v1, 0x0

    .line 1094
    invoke-interface {p6}, Lcom/subao/common/j/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    const/16 v0, 0x3ed

    invoke-interface {p4, v0, v1}, Lcom/subao/common/intf/RequestBuyCallback;->onRequestBuyResult(ILcom/subao/common/intf/RequestBuyResult;)V

    .line 1118
    :goto_0
    return-void

    .line 1099
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1100
    iget-object v0, p0, Lcom/subao/common/a/c;->u:Lcom/subao/common/intf/UserInfo;

    .line 1101
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/subao/common/intf/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1102
    :cond_1
    invoke-interface {p4, v3, v1}, Lcom/subao/common/intf/RequestBuyCallback;->onRequestBuyResult(ILcom/subao/common/intf/RequestBuyResult;)V

    goto :goto_0

    .line 1108
    :cond_2
    invoke-static {p1}, Lcom/subao/common/b/b;->b(Ljava/lang/String;)Lcom/subao/common/b/g;

    move-result-object v2

    .line 1109
    if-eqz v2, :cond_3

    iget-object v0, v2, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1110
    :cond_3
    invoke-interface {p4, v3, v1}, Lcom/subao/common/intf/RequestBuyCallback;->onRequestBuyResult(ILcom/subao/common/intf/RequestBuyResult;)V

    goto :goto_0

    .line 1113
    :cond_4
    new-instance v0, Lcom/subao/common/c/a;

    .line 1114
    invoke-virtual {p0}, Lcom/subao/common/a/c;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    move-object v2, p5

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/c/a;-><init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/intf/RequestBuyCallback;)V

    .line 1117
    invoke-static {v0}, Lcom/subao/common/m/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 827
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/subao/common/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;)V

    .line 835
    return-void
.end method

.method public a(Ljava/lang/String;[BLcom/subao/common/intf/XunyouTokenStateListener;)V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/subao/common/a/c;->F:Lcom/subao/common/a/c$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/subao/common/a/c$b;->a(Ljava/lang/String;[BLcom/subao/common/intf/XunyouTokenStateListener;)V

    .line 874
    return-void
.end method

.method declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subao/common/a/c;->A:Z

    if-eq v0, p1, :cond_0

    .line 345
    iput-boolean p1, p0, Lcom/subao/common/a/c;->A:Z

    .line 346
    invoke-virtual {p0}, Lcom/subao/common/a/c;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_0
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(ZLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1396
    iget-object v3, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const-string v4, "key_user_wifi_accel"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v2, v4, v0}, Lcom/subao/common/g/c;->a(ILjava/lang/String;I)V

    .line 1397
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1398
    :goto_1
    if-eqz v1, :cond_0

    .line 1399
    new-instance v0, Lcom/subao/common/a/c$a;

    iget-object v3, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    iget-object v4, p0, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    iget-object v5, p0, Lcom/subao/common/a/c;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/subao/common/a/c$a;-><init>(Lcom/subao/common/j/j;Lcom/subao/common/i/g;Ljava/lang/String;)V

    invoke-static {v0, v2, p2, p1}, Lcom/subao/common/b/b;->a(Lcom/subao/common/b/b$c;ILjava/lang/String;Z)V

    .line 1407
    :cond_0
    invoke-static {}, Lcom/subao/common/i/d$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1409
    const-string/jumbo v0, "userId"

    if-eqz v1, :cond_4

    :goto_2
    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    const-string/jumbo v1, "switch"

    if-eqz p1, :cond_5

    const-string v0, "on"

    :goto_3
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    new-instance v0, Lcom/subao/common/i/n$a;

    const-string v1, "set_wa_switch"

    invoke-direct {v0, v1, v2}, Lcom/subao/common/i/n$a;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1412
    iget-object v1, p0, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    invoke-interface {v1, v0}, Lcom/subao/common/i/g;->a(Lcom/subao/common/i/n$a;)V

    .line 1414
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1396
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1397
    goto :goto_1

    .line 1409
    :cond_4
    const-string p2, "(none)"

    goto :goto_2

    .line 1410
    :cond_5
    const-string v0, "off"

    goto :goto_3
.end method

.method public a(Lcom/subao/common/intf/RequestTrialCallback;)Z
    .locals 3
    .param p1    # Lcom/subao/common/intf/RequestTrialCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/subao/common/a/c;->u:Lcom/subao/common/intf/UserInfo;

    .line 1018
    if-eqz v0, :cond_0

    .line 1019
    iget-object v1, p0, Lcom/subao/common/a/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    invoke-virtual {v2}, Lcom/subao/common/e/ak;->i()Lcom/subao/common/e/al;

    move-result-object v2

    invoke-virtual {v0}, Lcom/subao/common/intf/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0, p1}, Lcom/subao/common/b/b;->a(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/intf/RequestTrialCallback;)Z

    move-result v0

    .line 1024
    :goto_0
    return v0

    .line 1021
    :cond_0
    if-eqz p1, :cond_1

    .line 1022
    const/16 v0, 0x3ec

    invoke-interface {p1, v0}, Lcom/subao/common/intf/RequestTrialCallback;->onRequestTrialResult(I)V

    .line 1024
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1167
    iget-object v1, p0, Lcom/subao/common/a/c;->B:Lcom/subao/common/a/e$a;

    .line 1168
    if-nez v1, :cond_1

    .line 1169
    const/16 v0, 0x1f4b

    .line 1185
    :cond_0
    :goto_0
    return v0

    .line 1171
    :cond_1
    invoke-interface {v1}, Lcom/subao/common/a/e$a;->a()Lcom/subao/common/a/e;

    move-result-object v1

    .line 1172
    if-eqz v1, :cond_0

    .line 1176
    invoke-virtual {v1}, Lcom/subao/common/a/e;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1180
    invoke-virtual {v1, p1}, Lcom/subao/common/a/e;->protect(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1184
    invoke-virtual {v1}, Lcom/subao/common/a/e;->a()V

    .line 1185
    const/16 v0, 0x1f42

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/subao/common/a/c;->B()I

    .line 780
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const/4 v1, 0x0

    const-string v2, "key_pay_type_white_list"

    invoke-virtual {v0, v1, v2, p1}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 1382
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1321
    new-instance v0, Lcom/subao/common/a/c$a;

    iget-object v1, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    iget-object v2, p0, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    iget-object v3, p0, Lcom/subao/common/a/c;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/a/c$a;-><init>(Lcom/subao/common/j/j;Lcom/subao/common/i/g;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Lcom/subao/common/b/b;->a(Lcom/subao/common/b/b$c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/subao/common/a/c;->C:Z

    .line 362
    return-void
.end method

.method public c(Z)Lcom/subao/common/e/ao;
    .locals 4

    .prologue
    .line 449
    if-eqz p1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/subao/common/a/c;->h:Landroid/content/Context;

    .line 451
    invoke-static {}, Lcom/subao/common/h/a;->a()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/subao/common/a/c;->C:Z

    iget-object v3, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    .line 450
    invoke-static {v0, v1, v2, v3}, Lcom/subao/common/e/a;->a(Landroid/content/Context;Ljava/util/List;ZLcom/subao/common/g/c;)Lcom/subao/common/e/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/a/c;->z:Lcom/subao/common/e/ao;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/subao/common/a/c;->z:Lcom/subao/common/e/ao;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1}, Lcom/subao/common/g/c;->b(I)V

    .line 1194
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1371
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const-string v1, "key_set_round_openid"

    invoke-virtual {v0, v2, v1, p1}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const-string v1, "key_set_round_pvpid"

    invoke-virtual {v0, v2, v1, p2}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 1373
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->d()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/subao/common/a/c;->w:Lcom/subao/common/intf/VPNStateListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/subao/common/a/c$z;->a(Lcom/subao/common/intf/VPNStateListener;Z)V

    .line 761
    iget-object v0, p0, Lcom/subao/common/a/c;->p:Lcom/subao/common/a/c$s;

    if-nez v0, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/subao/common/a/c;->i:Lcom/subao/common/e/q$a;

    sget-object v1, Lcom/subao/common/e/q$a;->a:Lcom/subao/common/e/q$a;

    if-eq v0, v1, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/subao/common/a/c;->p()V

    .line 768
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->n()V

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1}, Lcom/subao/common/g/c;->a(I)V

    .line 1201
    return-void
.end method

.method public d(Z)V
    .locals 4

    .prologue
    .line 1300
    iget-object v1, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const/4 v2, 0x0

    const-string v3, "key_front_game_uid"

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/subao/common/a/c;->j:I

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/subao/common/g/c;->a(ILjava/lang/String;I)V

    .line 1302
    return-void

    .line 1300
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method e()Lcom/subao/common/e/ak;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    return-object v0
.end method

.method public e(I)V
    .locals 3

    .prologue
    .line 1233
    iput p1, p0, Lcom/subao/common/a/c;->t:I

    .line 1234
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const/4 v1, 0x0

    const-string v2, "key_free_flow_type"

    invoke-virtual {v0, v1, v2, p1}, Lcom/subao/common/g/c;->a(ILjava/lang/String;I)V

    .line 1235
    return-void
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/subao/common/a/c;->u:Lcom/subao/common/intf/UserInfo;

    .line 1391
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1392
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/subao/common/a/c;->a(ZLjava/lang/String;)V

    .line 1393
    return-void

    .line 1391
    :cond_0
    invoke-virtual {v0}, Lcom/subao/common/intf/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Lcom/subao/common/intf/UserStateListener;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/subao/common/a/c;->x:Lcom/subao/common/intf/UserStateListener;

    return-object v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/subao/common/a/c;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/subao/common/j/i;->a(Landroid/content/Context;)Lcom/subao/common/h;

    move-result-object v0

    .line 1275
    iget-object v1, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const/4 v2, 0x0

    const-string v3, "key_mobile_switch_state"

    invoke-virtual {v0}, Lcom/subao/common/h;->a()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/subao/common/g/c;->a(ILjava/lang/String;I)V

    .line 1277
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1}, Lcom/subao/common/g/c;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 1278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1279
    iget-object v1, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    invoke-virtual {v1}, Lcom/subao/common/e/ak;->e()Ljava/lang/String;

    move-result-object v1

    .line 1280
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1281
    iget-object v2, p0, Lcom/subao/common/a/c;->a:Ljava/lang/String;

    sget-object v3, Lcom/subao/common/e/q;->b:Lcom/subao/common/e/q$a;

    invoke-static {v0, v1, v2, v3}, Lcom/subao/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/e/q$a;)Ljava/lang/String;

    move-result-object v0

    .line 1284
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/subao/common/a/c;->u:Lcom/subao/common/intf/UserInfo;

    .line 1287
    if-nez v0, :cond_2

    .line 1288
    const/4 v1, 0x0

    move-object v0, v1

    move-object v2, v1

    .line 1293
    :goto_0
    invoke-static {v0, v2}, Lcom/subao/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1295
    :cond_1
    const-string v1, "SubaoGame"

    invoke-static {v1, v0}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    return-object v0

    .line 1290
    :cond_2
    invoke-virtual {v0}, Lcom/subao/common/intf/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1291
    invoke-virtual {v0}, Lcom/subao/common/intf/UserInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    goto :goto_0
.end method

.method g()Lcom/subao/common/e/a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/subao/common/a/c;->n:Lcom/subao/common/e/a;

    return-object v0
.end method

.method public g(I)V
    .locals 3

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    const/4 v1, 0x0

    const-string v2, "key_sdk_player_level"

    invoke-virtual {v0, v1, v2, p1}, Lcom/subao/common/g/c;->a(ILjava/lang/String;I)V

    .line 1314
    return-void
.end method

.method public h(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1}, Lcom/subao/common/g/c;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/subao/common/a/c;->p:Lcom/subao/common/a/c$s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/intf/SupportGameLabel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    invoke-static {}, Lcom/subao/common/h/a;->a()Ljava/util/List;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    :goto_0
    return-object v0

    .line 469
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 470
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/b;

    .line 471
    new-instance v3, Lcom/subao/common/intf/SupportGameLabel;

    iget-object v4, v0, Lcom/subao/common/e/b;->a:Ljava/lang/String;

    .line 472
    invoke-virtual {v0}, Lcom/subao/common/e/b;->b()Z

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/subao/common/intf/SupportGameLabel;-><init>(Ljava/lang/String;Z)V

    .line 473
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 475
    goto :goto_0
.end method

.method public i(I)Z
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0, p1}, Lcom/subao/common/g/c;->f(I)Z

    move-result v0

    return v0
.end method

.method j()Landroid/content/Context;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/subao/common/a/c;->h:Landroid/content/Context;

    return-object v0
.end method

.method public k()Lcom/subao/common/e/u$a;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/subao/common/a/c;->k:Lcom/subao/common/e/u$a;

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/subao/common/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->b()I

    move-result v0

    return v0
.end method

.method n()V
    .locals 6

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/subao/common/a/c;->A:Z

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/subao/common/a/c;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    iget-object v3, p0, Lcom/subao/common/a/c;->s:Lcom/subao/common/i/i;

    iget v4, p0, Lcom/subao/common/a/c;->q:I

    iget-object v5, p0, Lcom/subao/common/a/c;->v:Lcom/subao/common/intf/AccelSwitchListener;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/subao/common/a/c$m;->a(Landroid/content/Context;Lcom/subao/common/a/a;Lcom/subao/common/i/g;Lcom/subao/common/i/i;ILcom/subao/common/intf/AccelSwitchListener;)V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/subao/common/a/c;->v:Lcom/subao/common/intf/AccelSwitchListener;

    invoke-static {v0}, Lcom/subao/common/a/c$n;->a(Lcom/subao/common/intf/AccelSwitchListener;)V

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/subao/common/a/c;->p:Lcom/subao/common/a/c$s;

    if-nez v0, :cond_1

    .line 701
    const/16 v0, 0x3e8

    .line 720
    :cond_0
    :goto_0
    return v0

    .line 705
    :cond_1
    monitor-enter p0

    .line 706
    :try_start_0
    iget-boolean v0, p0, Lcom/subao/common/a/c;->A:Z

    if-eqz v0, :cond_2

    .line 707
    const/16 v0, 0x3ea

    .line 716
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    if-nez v0, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/subao/common/a/c;->n()V

    goto :goto_0

    .line 709
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/subao/common/a/c;->A:Z

    .line 710
    iget-boolean v0, p0, Lcom/subao/common/a/c;->A:Z

    if-eqz v0, :cond_3

    .line 711
    const/4 v0, 0x0

    goto :goto_1

    .line 713
    :cond_3
    const/16 v0, 0x3e9

    goto :goto_1

    .line 716
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public p()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/subao/common/a/c;->p:Lcom/subao/common/a/c$s;

    if-nez v0, :cond_0

    .line 736
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/subao/common/a/c;->r:Lcom/subao/common/a/c$af;

    invoke-virtual {v0}, Lcom/subao/common/a/c$af;->a()V

    .line 729
    monitor-enter p0

    .line 730
    :try_start_0
    iget-boolean v0, p0, Lcom/subao/common/a/c;->A:Z

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->f()V

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subao/common/a/c;->A:Z

    .line 733
    invoke-virtual {p0}, Lcom/subao/common/a/c;->n()V

    .line 735
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 811
    iget-wide v0, p0, Lcom/subao/common/a/c;->E:J

    return-wide v0
.end method

.method public r()[B
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/subao/common/a/c;->F:Lcom/subao/common/a/c$b;

    invoke-interface {v0}, Lcom/subao/common/a/c$b;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 3

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/subao/common/a/c;->r:Lcom/subao/common/a/c$af;

    iget-object v1, p0, Lcom/subao/common/a/c;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/subao/common/a/c$af;->a(Landroid/content/Context;)I

    move-result v0

    .line 1146
    iget-object v1, p0, Lcom/subao/common/a/c;->i:Lcom/subao/common/e/q$a;

    sget-object v2, Lcom/subao/common/e/q$a;->a:Lcom/subao/common/e/q$a;

    if-eq v1, v2, :cond_0

    .line 1147
    invoke-virtual {p0, v0}, Lcom/subao/common/a/c;->b(I)I

    move-result v1

    .line 1148
    if-eqz v1, :cond_0

    .line 1150
    :try_start_0
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1151
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    :goto_0
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7e0

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0

    .line 1157
    :cond_0
    return v0

    .line 1152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 1189
    iget v0, p0, Lcom/subao/common/a/c;->t:I

    return v0
.end method

.method public u()I
    .locals 6

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->h()I

    move-result v0

    .line 1209
    iget-object v1, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    invoke-virtual {v1}, Lcom/subao/common/e/ak;->f()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/subao/common/a/c;->m:Lcom/subao/common/e/ak;

    invoke-virtual {v0}, Lcom/subao/common/e/ak;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1220
    :cond_0
    :goto_0
    return v0

    .line 1212
    :cond_1
    invoke-virtual {p0}, Lcom/subao/common/a/c;->c()Z

    move-result v1

    .line 1213
    iget-object v2, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    invoke-virtual {v2}, Lcom/subao/common/j/h;->a()Lcom/subao/common/j/j$a;

    move-result-object v2

    .line 1214
    invoke-static {}, Lcom/subao/common/i/d$a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1215
    iget-object v3, p0, Lcom/subao/common/a/c;->f:Lcom/subao/common/i/g;

    iget-object v4, p0, Lcom/subao/common/a/c;->s:Lcom/subao/common/i/i;

    .line 1216
    invoke-interface {v4}, Lcom/subao/common/i/i;->e()Lcom/subao/common/i/a;

    move-result-object v4

    .line 1217
    invoke-static {}, Lcom/subao/common/i/k;->a()Lcom/subao/common/i/k;

    move-result-object v5

    iget v2, v2, Lcom/subao/common/j/j$a;->g:I

    .line 1216
    invoke-virtual {v4, v5, v0, v2, v1}, Lcom/subao/common/i/a;->a(Lcom/subao/common/i/k;IIZ)Lcom/subao/common/i/n;

    move-result-object v1

    .line 1215
    invoke-interface {v3, v1}, Lcom/subao/common/i/g;->a(Lcom/subao/common/i/n;)V

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->k()I

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/subao/common/a/c;->l:Lcom/subao/common/g/c;

    invoke-virtual {v0}, Lcom/subao/common/g/c;->l()Z

    move-result v0

    return v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    invoke-virtual {v0}, Lcom/subao/common/j/h;->a()Lcom/subao/common/j/j$a;

    move-result-object v0

    iget v0, v0, Lcom/subao/common/j/j$a;->g:I

    return v0
.end method
