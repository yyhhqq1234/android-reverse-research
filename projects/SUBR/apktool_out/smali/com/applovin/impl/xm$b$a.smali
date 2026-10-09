.class Lcom/applovin/impl/xm$b$a;
.super Lcom/applovin/impl/ne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/xm$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/applovin/impl/xm$b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/xm$b;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-direct {p0, p2}, Lcom/applovin/impl/ne;-><init>(Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 10

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {p1}, Lcom/applovin/impl/xm$b;->j(Lcom/applovin/impl/xm$b;)J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 308
    iget-object p1, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {p1}, Lcom/applovin/impl/xm$b;->e(Lcom/applovin/impl/xm$b;)Lcom/applovin/impl/sdk/n;

    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {p1}, Lcom/applovin/impl/xm$b;->g(Lcom/applovin/impl/xm$b;)Lcom/applovin/impl/sdk/n;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {v0}, Lcom/applovin/impl/xm$b;->f(Lcom/applovin/impl/xm$b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad failed to load in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    iget-object v2, v2, Lcom/applovin/impl/xm$b;->l:Lcom/applovin/impl/xm;

    invoke-static {v2}, Lcom/applovin/impl/xm;->e(Lcom/applovin/impl/xm;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ad unit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    iget-object v2, v2, Lcom/applovin/impl/xm$b;->l:Lcom/applovin/impl/xm;

    invoke-static {v2}, Lcom/applovin/impl/xm;->d(Lcom/applovin/impl/xm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to load ad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/xm$b;->a(Lcom/applovin/impl/xm$b;Ljava/lang/String;)V

    .line 313
    iget-object v4, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {v4}, Lcom/applovin/impl/xm$b;->h(Lcom/applovin/impl/xm$b;)Lcom/applovin/impl/fe;

    move-result-object v5

    sget-object v6, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->FAILED_TO_LOAD:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lcom/applovin/impl/xm$b;->a(Lcom/applovin/impl/xm$b;Lcom/applovin/impl/fe;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    .line 316
    iget-object p1, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {p1}, Lcom/applovin/impl/xm$b;->c(Lcom/applovin/impl/xm$b;)I

    move-result p1

    iget-object p2, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {p2}, Lcom/applovin/impl/xm$b;->d(Lcom/applovin/impl/xm$b;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_1

    .line 318
    new-instance p1, Lcom/applovin/impl/xm$b;

    iget-object p2, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    iget-object v0, p2, Lcom/applovin/impl/xm$b;->l:Lcom/applovin/impl/xm;

    invoke-static {p2}, Lcom/applovin/impl/xm$b;->c(Lcom/applovin/impl/xm$b;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iget-object v1, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {v1}, Lcom/applovin/impl/xm$b;->d(Lcom/applovin/impl/xm$b;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, p2, v1, v2}, Lcom/applovin/impl/xm$b;-><init>(Lcom/applovin/impl/xm;ILjava/util/List;Lcom/applovin/impl/xm$a;)V

    .line 319
    iget-object p2, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {p2}, Lcom/applovin/impl/xm$b;->i(Lcom/applovin/impl/xm$b;)Lcom/applovin/impl/sdk/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->i0()Lcom/applovin/impl/tm;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/tm$b;->c:Lcom/applovin/impl/tm$b;

    invoke-virtual {p2, p1, v0}, Lcom/applovin/impl/tm;->a(Lcom/applovin/impl/yl;Lcom/applovin/impl/tm$b;)V

    goto :goto_0

    .line 324
    :cond_1
    new-instance p1, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const/16 p2, -0x1389

    const-string v0, "MAX returned eligible ads from mediated networks, but all ads failed to load. Inspect getWaterfall() for more info."

    invoke-direct {p1, p2, v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    .line 326
    iget-object p2, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    iget-object p2, p2, Lcom/applovin/impl/xm$b;->l:Lcom/applovin/impl/xm;

    invoke-static {p2, p1}, Lcom/applovin/impl/xm;->a(Lcom/applovin/impl/xm;Lcom/applovin/mediation/MaxError;)V

    :goto_0
    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 10

    .line 285
    iget-object v0, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    const-string v1, "loaded ad"

    invoke-static {v0, v1}, Lcom/applovin/impl/xm$b;->a(Lcom/applovin/impl/xm$b;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {v2}, Lcom/applovin/impl/xm$b;->j(Lcom/applovin/impl/xm$b;)J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 288
    iget-object v0, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {v0}, Lcom/applovin/impl/xm$b;->k(Lcom/applovin/impl/xm$b;)Lcom/applovin/impl/sdk/n;

    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {v0}, Lcom/applovin/impl/xm$b;->b(Lcom/applovin/impl/xm$b;)Lcom/applovin/impl/sdk/n;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {v1}, Lcom/applovin/impl/xm$b;->a(Lcom/applovin/impl/xm$b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad loaded in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    iget-object v3, v3, Lcom/applovin/impl/xm$b;->l:Lcom/applovin/impl/xm;

    invoke-static {v3}, Lcom/applovin/impl/xm;->e(Lcom/applovin/impl/xm;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ad unit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    iget-object v3, v3, Lcom/applovin/impl/xm$b;->l:Lcom/applovin/impl/xm;

    invoke-static {v3}, Lcom/applovin/impl/xm;->d(Lcom/applovin/impl/xm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v4, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    check-cast p1, Lcom/applovin/impl/fe;

    sget-object v6, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->AD_LOADED:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    const/4 v9, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/applovin/impl/xm$b;->a(Lcom/applovin/impl/xm$b;Lcom/applovin/impl/fe;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    .line 294
    iget-object v0, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {v0}, Lcom/applovin/impl/xm$b;->c(Lcom/applovin/impl/xm$b;)I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {v1}, Lcom/applovin/impl/xm$b;->d(Lcom/applovin/impl/xm$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 296
    iget-object v2, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    invoke-static {v2}, Lcom/applovin/impl/xm$b;->d(Lcom/applovin/impl/xm$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/applovin/impl/fe;

    sget-object v4, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->AD_LOAD_NOT_ATTEMPTED:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/applovin/impl/xm$b;->a(Lcom/applovin/impl/xm$b;Lcom/applovin/impl/fe;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/xm$b$a;->b:Lcom/applovin/impl/xm$b;

    iget-object v0, v0, Lcom/applovin/impl/xm$b;->l:Lcom/applovin/impl/xm;

    invoke-static {v0, p1}, Lcom/applovin/impl/xm;->a(Lcom/applovin/impl/xm;Lcom/applovin/impl/fe;)V

    return-void
.end method
