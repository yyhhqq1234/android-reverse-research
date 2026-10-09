.class Lcom/subao/common/a/c$o;
.super Lcom/subao/common/j/n;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/subao/common/i/d$b;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 2189
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/subao/common/j/n;-><init>(Lcom/subao/common/i/d$b;II)V

    .line 2190
    iput-object p3, p0, Lcom/subao/common/a/c$o;->b:Ljava/lang/String;

    .line 2191
    iput p4, p0, Lcom/subao/common/a/c$o;->c:I

    .line 2192
    iput-object p5, p0, Lcom/subao/common/a/c$o;->f:Ljava/lang/String;

    .line 2193
    return-void
.end method

.method static synthetic a(Lcom/subao/common/a/c$o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/subao/common/a/c$o;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/subao/common/a/c$o;)I
    .locals 1

    .prologue
    .line 2179
    iget v0, p0, Lcom/subao/common/a/c$o;->c:I

    return v0
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 2212
    const-string v0, "SubaoNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OrdersResponseCallbackRetry code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    return-void
.end method

.method static synthetic c(Lcom/subao/common/a/c$o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/subao/common/a/c$o;->f:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 2216
    iget v0, p0, Lcom/subao/common/a/c$o;->a:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 2218
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v0

    new-instance v1, Lcom/subao/common/a/c$o$1;

    invoke-direct {v1, p0}, Lcom/subao/common/a/c$o$1;-><init>(Lcom/subao/common/a/c$o;)V

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget v4, p0, Lcom/subao/common/a/c$o;->a:I

    int-to-double v4, v4

    .line 2223
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x40b3880000000000L    # 5000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 2218
    invoke-interface {v0, v1, v2, v3}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;J)Z

    .line 2224
    iget v0, p0, Lcom/subao/common/a/c$o;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subao/common/a/c$o;->a:I

    .line 2226
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2197
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(I[B)V
    .locals 0

    .prologue
    .line 2202
    invoke-direct {p0, p1}, Lcom/subao/common/a/c$o;->b(I)V

    .line 2203
    return-void
.end method

.method protected b(I[B)V
    .locals 0

    .prologue
    .line 2207
    invoke-direct {p0}, Lcom/subao/common/a/c$o;->e()V

    .line 2208
    invoke-direct {p0, p1}, Lcom/subao/common/a/c$o;->b(I)V

    .line 2209
    return-void
.end method
