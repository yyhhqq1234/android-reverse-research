.class public Lcom/subao/common/e/o;
.super Lcom/subao/common/e/u;
.source "CustomerScriptDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/o$a;,
        Lcom/subao/common/e/o$b;
    }
.end annotation


# instance fields
.field protected final a:Lcom/subao/common/e/o$b;

.field private final d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Lcom/subao/common/e/o$b;)V
    .locals 2
    .param p1    # Lcom/subao/common/e/u$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/u$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/subao/common/e/o$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    sget-object v0, Lcom/subao/common/j/a$b;->a:Lcom/subao/common/j/a$b;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/subao/common/e/u;-><init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Lcom/subao/common/j/a$b;[B)V

    .line 26
    iget-object v0, p2, Lcom/subao/common/e/u$d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/subao/common/e/o;->d:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/subao/common/e/o;->a:Lcom/subao/common/e/o$b;

    .line 28
    return-void
.end method

.method public static b(Lcom/subao/common/e/u$b;)Lcom/subao/common/e/o$a;
    .locals 3
    .param p0    # Lcom/subao/common/e/u$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-static {p0}, Lcom/subao/common/e/o;->c(Lcom/subao/common/e/u$b;)Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/subao/common/e/o$a;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v2, v1, v0}, Lcom/subao/common/e/o$a;-><init>(Ljava/lang/String;Lcom/subao/common/j/a$c;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/subao/common/e/u$b;->b:Lcom/subao/common/j/a$c;

    goto :goto_0
.end method

.method private static c(Lcom/subao/common/e/u$b;)Ljava/lang/String;
    .locals 4
    .param p0    # Lcom/subao/common/e/u$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 36
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/subao/common/e/u$b;->a:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/subao/common/e/u$b;->a:Ljava/net/HttpURLConnection;

    const-string v2, "ETag"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    .line 43
    const/4 v0, 0x1

    const/16 v2, 0x21

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    const-string v0, "/api/v2/%s/scripts?serviceId=%s&userId=%s&subaoId=%s&clientVersion=%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/subao/common/e/o;->b:Lcom/subao/common/e/u$a;

    iget-object v3, v3, Lcom/subao/common/e/u$a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/subao/common/e/o;->a:Lcom/subao/common/e/o$b;

    iget-object v3, v3, Lcom/subao/common/e/o$b;->a:Ljava/lang/String;

    .line 55
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/subao/common/e/o;->d:Ljava/lang/String;

    .line 56
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/subao/common/e/o;->a:Lcom/subao/common/e/o$b;

    iget-object v3, v3, Lcom/subao/common/e/o$b;->b:Ljava/lang/String;

    .line 57
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/subao/common/e/o;->b:Lcom/subao/common/e/u$a;

    iget-object v3, v3, Lcom/subao/common/e/u$a;->b:Ljava/lang/String;

    .line 58
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 53
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "https"

    return-object v0
.end method
