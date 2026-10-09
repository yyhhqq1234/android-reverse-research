.class Lcom/subao/common/a/c$u;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "u"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/a/c;

.field private final b:Lcom/subao/common/g/c;

.field private final c:Lcom/subao/common/m/a;

.field private final d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/subao/common/a/c;Lcom/subao/common/g/c;ILcom/subao/common/m/a;)V
    .locals 0

    .prologue
    .line 2237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2238
    iput-object p1, p0, Lcom/subao/common/a/c$u;->a:Lcom/subao/common/a/c;

    .line 2239
    iput-object p2, p0, Lcom/subao/common/a/c$u;->b:Lcom/subao/common/g/c;

    .line 2240
    iput-object p4, p0, Lcom/subao/common/a/c$u;->c:Lcom/subao/common/m/a;

    .line 2241
    iput p3, p0, Lcom/subao/common/a/c$u;->d:I

    .line 2242
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2246
    iget v0, p0, Lcom/subao/common/a/c$u;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subao/common/a/c$u;->e:I

    .line 2249
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/a/c$u;->a:Lcom/subao/common/a/c;

    invoke-virtual {v0}, Lcom/subao/common/a/c;->s()I
    :try_end_0
    .catch Lcom/subao/common/k/b$d; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v1

    .line 2263
    :goto_0
    const/16 v1, 0x7d7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d8

    if-ne v0, v1, :cond_3

    .line 2268
    :cond_0
    iget-object v1, p0, Lcom/subao/common/a/c$u;->a:Lcom/subao/common/a/c;

    invoke-virtual {v1}, Lcom/subao/common/a/c;->j()Landroid/content/Context;

    move-result-object v1

    .line 2269
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v2

    iget-object v3, p0, Lcom/subao/common/a/c$u;->b:Lcom/subao/common/g/c;

    iget v4, p0, Lcom/subao/common/a/c$u;->d:I

    .line 2268
    invoke-static {v1, v2, v0, v3, v4}, Lcom/subao/common/a/c$v;->a(Landroid/content/Context;Lcom/subao/common/m/a;ILcom/subao/common/g/c;I)V

    .line 2273
    :goto_1
    return-void

    .line 2251
    :catch_0
    move-exception v0

    .line 2252
    iget v2, p0, Lcom/subao/common/a/c$u;->e:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/subao/common/k/b$d;->a()I

    move-result v2

    invoke-static {v2}, Lcom/subao/common/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2253
    const-string v2, "SubaoParallel"

    invoke-static {v2}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2254
    const-string v2, "SubaoParallel"

    sget-object v3, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v4, "Request mobile fd error #%d, retry after 1.5 seconds"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/subao/common/k/b$d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    :cond_1
    iget-object v0, p0, Lcom/subao/common/a/c$u;->c:Lcom/subao/common/m/a;

    const-wide/16 v2, 0x5dc

    invoke-interface {v0, p0, v2, v3}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2259
    :cond_2
    const/4 v1, -0x1

    .line 2260
    invoke-virtual {v0}, Lcom/subao/common/k/b$d;->a()I

    move-result v0

    move v2, v1

    goto :goto_0

    .line 2271
    :cond_3
    iget-object v1, p0, Lcom/subao/common/a/c$u;->b:Lcom/subao/common/g/c;

    iget v3, p0, Lcom/subao/common/a/c$u;->d:I

    invoke-static {v1, v3, v0, v2}, Lcom/subao/common/a/c;->a(Lcom/subao/common/g/c;III)V

    goto :goto_1
.end method
