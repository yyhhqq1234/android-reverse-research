.class Lcom/subao/common/l/c$f;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field public final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field public final d:Lcom/subao/common/i/n$a;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/i/n$a;)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput p1, p0, Lcom/subao/common/l/c$f;->a:I

    .line 306
    iput-object p2, p0, Lcom/subao/common/l/c$f;->b:Ljava/lang/String;

    .line 307
    iput-object p3, p0, Lcom/subao/common/l/c$f;->c:Ljava/lang/String;

    .line 308
    iput-object p4, p0, Lcom/subao/common/l/c$f;->d:Lcom/subao/common/i/n$a;

    .line 309
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 301
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/subao/common/l/c$f;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/i/n$a;)V

    .line 302
    return-void
.end method

.method static a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;ILjava/lang/Exception;)Lcom/subao/common/l/c$f;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    new-instance v0, Lcom/subao/common/l/a;

    invoke-direct {v0, p0, p2}, Lcom/subao/common/l/a;-><init>(Lcom/subao/common/l/c$a;I)V

    .line 313
    invoke-virtual {v0, p1}, Lcom/subao/common/l/a;->a(Lcom/subao/common/l/h;)V

    .line 314
    invoke-virtual {v0, p3}, Lcom/subao/common/l/a;->a(Ljava/lang/Exception;)V

    .line 315
    new-instance v1, Lcom/subao/common/l/c$f;

    invoke-virtual {v0}, Lcom/subao/common/l/a;->a()Lcom/subao/common/i/n$a;

    move-result-object v0

    invoke-direct {v1, p2, v2, v2, v0}, Lcom/subao/common/l/c$f;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/i/n$a;)V

    return-object v1
.end method

.method static a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;I[B)Lcom/subao/common/l/c$f;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    new-instance v0, Lcom/subao/common/l/a;

    invoke-direct {v0, p0, p2}, Lcom/subao/common/l/a;-><init>(Lcom/subao/common/l/c$a;I)V

    .line 320
    invoke-virtual {v0, p1}, Lcom/subao/common/l/a;->a(Lcom/subao/common/l/h;)V

    .line 321
    invoke-virtual {v0, p3}, Lcom/subao/common/l/a;->a([B)V

    .line 322
    new-instance v1, Lcom/subao/common/l/c$f;

    invoke-virtual {v0}, Lcom/subao/common/l/a;->a()Lcom/subao/common/i/n$a;

    move-result-object v0

    invoke-direct {v1, p2, v2, v2, v0}, Lcom/subao/common/l/c$f;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/i/n$a;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    if-ne p1, p0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 330
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 331
    goto :goto_0

    .line 333
    :cond_2
    instance-of v2, p1, Lcom/subao/common/l/c$f;

    if-nez v2, :cond_3

    move v0, v1

    .line 334
    goto :goto_0

    .line 336
    :cond_3
    check-cast p1, Lcom/subao/common/l/c$f;

    .line 337
    iget v2, p0, Lcom/subao/common/l/c$f;->a:I

    iget v3, p1, Lcom/subao/common/l/c$f;->a:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/c$f;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/c$f;->b:Ljava/lang/String;

    .line 338
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/c$f;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/c$f;->c:Ljava/lang/String;

    .line 339
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/c$f;->d:Lcom/subao/common/i/n$a;

    iget-object v3, p1, Lcom/subao/common/l/c$f;->d:Lcom/subao/common/i/n$a;

    .line 340
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 345
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "[%d, \"%s\",\"%s\"]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/subao/common/l/c$f;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/subao/common/l/c$f;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/subao/common/l/c$f;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
