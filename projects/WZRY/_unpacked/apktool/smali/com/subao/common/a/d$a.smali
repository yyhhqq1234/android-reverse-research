.class Lcom/subao/common/a/d$a;
.super Ljava/lang/Object;
.source "JniCallbackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/g/c;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method private constructor <init>(Lcom/subao/common/g/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lcom/subao/common/a/d$a;->a:Lcom/subao/common/g/c;

    .line 336
    iput p2, p0, Lcom/subao/common/a/d$a;->b:I

    .line 337
    iput-object p3, p0, Lcom/subao/common/a/d$a;->c:Ljava/lang/String;

    .line 338
    iput-object p4, p0, Lcom/subao/common/a/d$a;->d:Ljava/lang/String;

    .line 339
    iput-object p5, p0, Lcom/subao/common/a/d$a;->e:Ljava/lang/String;

    .line 340
    iput p6, p0, Lcom/subao/common/a/d$a;->f:I

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/g/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/a/d$1;)V
    .locals 0

    .prologue
    .line 325
    invoke-direct/range {p0 .. p6}, Lcom/subao/common/a/d$a;-><init>(Lcom/subao/common/g/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/subao/common/n/b;->a(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 352
    const-string v0, "BASE64"

    invoke-virtual {v0, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 353
    invoke-static {v1, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 350
    const-string v0, ""

    goto :goto_0

    .line 355
    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/subao/common/n/h;->a([BZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/subao/common/a/d$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/subao/common/a/d$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/subao/common/a/d$a;->e:Ljava/lang/String;

    iget v3, p0, Lcom/subao/common/a/d$a;->f:I

    invoke-static {v0, v1, v2, v3}, Lcom/subao/common/a/d$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 361
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/subao/common/l/b;->a(Lcom/subao/common/j/k$a;)Ljava/lang/String;

    move-result-object v1

    .line 362
    iget-object v2, p0, Lcom/subao/common/a/d$a;->a:Lcom/subao/common/g/c;

    iget v3, p0, Lcom/subao/common/a/d$a;->b:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/subao/common/g/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method
