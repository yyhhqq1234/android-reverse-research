.class public Lcom/subao/common/j/d$c;
.super Ljava/lang/Object;
.source "IPInfoQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/subao/common/j/d$c;->a:Ljava/lang/String;

    .line 289
    iput p2, p0, Lcom/subao/common/j/d$c;->b:I

    .line 290
    iput p3, p0, Lcom/subao/common/j/d$c;->c:I

    .line 291
    iput-object p4, p0, Lcom/subao/common/j/d$c;->d:Ljava/lang/String;

    .line 292
    return-void
.end method


# virtual methods
.method public a()Lcom/subao/common/e/j;
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/subao/common/j/d$c;->c:I

    sparse-switch v0, :sswitch_data_0

    .line 336
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 330
    :sswitch_0
    sget-object v0, Lcom/subao/common/e/j;->a:Lcom/subao/common/e/j;

    goto :goto_0

    .line 332
    :sswitch_1
    sget-object v0, Lcom/subao/common/e/j;->b:Lcom/subao/common/e/j;

    goto :goto_0

    .line 334
    :sswitch_2
    sget-object v0, Lcom/subao/common/e/j;->c:Lcom/subao/common/e/j;

    goto :goto_0

    .line 328
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    if-nez p1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v1

    .line 299
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 300
    goto :goto_0

    .line 302
    :cond_2
    instance-of v2, p1, Lcom/subao/common/j/d$c;

    if-eqz v2, :cond_0

    .line 305
    check-cast p1, Lcom/subao/common/j/d$c;

    .line 306
    iget v2, p0, Lcom/subao/common/j/d$c;->b:I

    iget v3, p1, Lcom/subao/common/j/d$c;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/subao/common/j/d$c;->c:I

    iget v3, p1, Lcom/subao/common/j/d$c;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/subao/common/j/d$c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/j/d$c;->a:Ljava/lang/String;

    .line 308
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/j/d$c;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/j/d$c;->d:Ljava/lang/String;

    .line 309
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/subao/common/j/d$c;->a()Lcom/subao/common/e/j;

    move-result-object v0

    .line 315
    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "[%s, (%d.%d (%s)) (%s)]"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/subao/common/j/d$c;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/subao/common/j/d$c;->b:I

    .line 316
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/subao/common/j/d$c;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    .line 317
    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/subao/common/j/d$c;->d:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 315
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 316
    :cond_0
    iget v0, v0, Lcom/subao/common/e/j;->d:I

    .line 317
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
