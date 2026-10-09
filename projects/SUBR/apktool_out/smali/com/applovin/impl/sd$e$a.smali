.class public final Lcom/applovin/impl/sd$e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sd$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/UUID;

.field private b:Landroid/net/Uri;

.field private c:Lcom/applovin/impl/fb;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/applovin/impl/db;

.field private h:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    invoke-static {}, Lcom/applovin/impl/fb;->h()Lcom/applovin/impl/fb;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sd$e$a;->c:Lcom/applovin/impl/fb;

    .line 553
    invoke-static {}, Lcom/applovin/impl/db;->h()Lcom/applovin/impl/db;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sd$e$a;->g:Lcom/applovin/impl/db;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sd$a;)V
    .locals 0

    .line 1076
    invoke-direct {p0}, Lcom/applovin/impl/sd$e$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/applovin/impl/sd$e;)V
    .locals 1

    .line 1632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1633
    iget-object v0, p1, Lcom/applovin/impl/sd$e;->a:Ljava/util/UUID;

    iput-object v0, p0, Lcom/applovin/impl/sd$e$a;->a:Ljava/util/UUID;

    .line 1634
    iget-object v0, p1, Lcom/applovin/impl/sd$e;->b:Landroid/net/Uri;

    iput-object v0, p0, Lcom/applovin/impl/sd$e$a;->b:Landroid/net/Uri;

    .line 1635
    iget-object v0, p1, Lcom/applovin/impl/sd$e;->c:Lcom/applovin/impl/fb;

    iput-object v0, p0, Lcom/applovin/impl/sd$e$a;->c:Lcom/applovin/impl/fb;

    .line 1636
    iget-boolean v0, p1, Lcom/applovin/impl/sd$e;->d:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sd$e$a;->d:Z

    .line 1637
    iget-boolean v0, p1, Lcom/applovin/impl/sd$e;->e:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sd$e$a;->e:Z

    .line 1638
    iget-boolean v0, p1, Lcom/applovin/impl/sd$e;->f:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sd$e$a;->f:Z

    .line 1639
    iget-object v0, p1, Lcom/applovin/impl/sd$e;->g:Lcom/applovin/impl/db;

    iput-object v0, p0, Lcom/applovin/impl/sd$e$a;->g:Lcom/applovin/impl/db;

    .line 1640
    invoke-static {p1}, Lcom/applovin/impl/sd$e;->a(Lcom/applovin/impl/sd$e;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sd$e$a;->h:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sd$e;Lcom/applovin/impl/sd$a;)V
    .locals 0

    .line 2163
    invoke-direct {p0, p1}, Lcom/applovin/impl/sd$e$a;-><init>(Lcom/applovin/impl/sd$e;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sd$e$a;)Lcom/applovin/impl/fb;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/applovin/impl/sd$e$a;->c:Lcom/applovin/impl/fb;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/sd$e$a;)Z
    .locals 0

    .line 523
    iget-boolean p0, p0, Lcom/applovin/impl/sd$e$a;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/applovin/impl/sd$e$a;)Z
    .locals 0

    .line 523
    iget-boolean p0, p0, Lcom/applovin/impl/sd$e$a;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/applovin/impl/sd$e$a;)Lcom/applovin/impl/db;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/applovin/impl/sd$e$a;->g:Lcom/applovin/impl/db;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/sd$e$a;)[B
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/applovin/impl/sd$e$a;->h:[B

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/sd$e$a;)Landroid/net/Uri;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/applovin/impl/sd$e$a;->b:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/sd$e$a;)Ljava/util/UUID;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/applovin/impl/sd$e$a;->a:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/sd$e$a;)Z
    .locals 0

    .line 523
    iget-boolean p0, p0, Lcom/applovin/impl/sd$e$a;->f:Z

    return p0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sd$e;
    .locals 2

    .line 524
    new-instance v0, Lcom/applovin/impl/sd$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sd$e;-><init>(Lcom/applovin/impl/sd$e$a;Lcom/applovin/impl/sd$a;)V

    return-object v0
.end method
