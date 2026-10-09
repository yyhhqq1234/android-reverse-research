.class public Lcom/applovin/impl/rg;
.super Lcom/applovin/impl/lg;
.source "SourceFile"


# static fields
.field static final synthetic p:Z = true


# instance fields
.field private final h:Lcom/applovin/impl/aq;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

.field private final k:Lcom/iab/omid/library/applovin/adsession/media/VastProperties;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$224l2fADctWVgbqz5NZ90QzFAPY(Lcom/applovin/impl/rg;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/rg;->k()V

    return-void
.end method

.method public static synthetic $r8$lambda$4BlG4rem1ujrhLPc5jlCaytnDXE(Lcom/applovin/impl/rg;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/rg;->n()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ez_542q7hAutNM-4BcKuuq8dld0(Lcom/applovin/impl/rg;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/rg;->t()V

    return-void
.end method

.method public static synthetic $r8$lambda$HcTwSjpZQMHCx2RDkr-AKVgu4iA(Lcom/applovin/impl/rg;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/rg;->o()V

    return-void
.end method

.method public static synthetic $r8$lambda$KLsRXw2ekOMxPkABpcZOtJx7Oe0(Lcom/applovin/impl/rg;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/rg;->a(FZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$LLshBAJQJggeKUxbluEqaJ-tR_M(Lcom/applovin/impl/rg;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/rg;->m()V

    return-void
.end method

.method public static synthetic $r8$lambda$Lddn3Ixw7dYy6AztZQgvnCqquSw(Lcom/applovin/impl/rg;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/rg;->q()V

    return-void
.end method

.method public static synthetic $r8$lambda$XlPiaQHmbGkNeusqVdvJO3gq7Nw(Lcom/applovin/impl/rg;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/rg;->s()V

    return-void
.end method

.method public static synthetic $r8$lambda$esNO3gE9XbIVxkaKrNTSMkFh4oU(Lcom/applovin/impl/rg;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/rg;->u()V

    return-void
.end method

.method public static synthetic $r8$lambda$pUMkIbSI1rFomRpeT3f-Xf4Cz7E(Lcom/applovin/impl/rg;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/rg;->a(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pYpyTS_7UQGjHcJ-lkGzmV8avzI(Lcom/applovin/impl/rg;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/rg;->l()V

    return-void
.end method

.method public static synthetic $r8$lambda$qIG4cOmCBY-m2Q997zgpUsktBSM(Lcom/applovin/impl/rg;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/rg;->r()V

    return-void
.end method

.method public static synthetic $r8$lambda$xONZFox4z97tNjUqlWf2FC1wJ14(Lcom/applovin/impl/rg;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/rg;->p()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/aq;)V
    .locals 6

    .line 55
    invoke-direct {p0, p1}, Lcom/applovin/impl/lg;-><init>(Lcom/applovin/impl/sdk/AppLovinAdBase;)V

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/rg;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/rg;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/rg;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/rg;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/rg;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    iput-object p1, p0, Lcom/applovin/impl/rg;->h:Lcom/applovin/impl/aq;

    .line 72
    invoke-virtual {p1}, Lcom/applovin/impl/aq;->s1()J

    move-result-wide v0

    long-to-float v0, v0

    .line 75
    invoke-virtual {p1}, Lcom/applovin/impl/aq;->s1()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const/4 p1, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 77
    sget-object v0, Lcom/iab/omid/library/applovin/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/applovin/adsession/media/Position;

    invoke-static {p1, v0}, Lcom/iab/omid/library/applovin/adsession/media/VastProperties;->createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/applovin/adsession/media/Position;)Lcom/iab/omid/library/applovin/adsession/media/VastProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/rg;->k:Lcom/iab/omid/library/applovin/adsession/media/VastProperties;

    goto :goto_0

    .line 81
    :cond_0
    sget-object v1, Lcom/iab/omid/library/applovin/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/applovin/adsession/media/Position;

    invoke-static {v0, p1, v1}, Lcom/iab/omid/library/applovin/adsession/media/VastProperties;->createVastPropertiesForSkippableMedia(FZLcom/iab/omid/library/applovin/adsession/media/Position;)Lcom/iab/omid/library/applovin/adsession/media/VastProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/rg;->k:Lcom/iab/omid/library/applovin/adsession/media/VastProperties;

    :goto_0
    return-void
.end method

.method private synthetic a(FZ)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->start(FF)V

    return-void
.end method

.method private synthetic a(Z)V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->volumeChange(F)V

    return-void
.end method

.method private synthetic k()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->bufferFinish()V

    return-void
.end method

.method private synthetic l()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->bufferStart()V

    return-void
.end method

.method private synthetic m()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    sget-object v1, Lcom/iab/omid/library/applovin/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/applovin/adsession/media/InteractionType;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->adUserInteraction(Lcom/iab/omid/library/applovin/adsession/media/InteractionType;)V

    return-void
.end method

.method private synthetic n()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->complete()V

    return-void
.end method

.method private synthetic o()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->firstQuartile()V

    return-void
.end method

.method private synthetic p()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/applovin/impl/lg;->g:Lcom/iab/omid/library/applovin/adsession/AdEvents;

    iget-object v1, p0, Lcom/applovin/impl/rg;->k:Lcom/iab/omid/library/applovin/adsession/media/VastProperties;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/applovin/adsession/AdEvents;->loaded(Lcom/iab/omid/library/applovin/adsession/media/VastProperties;)V

    return-void
.end method

.method private synthetic q()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->midpoint()V

    return-void
.end method

.method private synthetic r()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->pause()V

    return-void
.end method

.method private synthetic s()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->resume()V

    return-void
.end method

.method private synthetic t()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->skipped()V

    return-void
.end method

.method private synthetic u()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->thirdQuartile()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 288
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda11;-><init>(Lcom/applovin/impl/rg;)V

    const-string v1, "track resumed"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public B()V
    .locals 2

    .line 314
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/impl/rg;)V

    const-string v1, "track skipped"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public C()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/applovin/impl/rg;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda9;-><init>(Lcom/applovin/impl/rg;)V

    const-string v1, "track third quartile"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected a()Lcom/iab/omid/library/applovin/adsession/AdSessionConfiguration;
    .locals 4

    .line 196
    :try_start_0
    sget-object v0, Lcom/iab/omid/library/applovin/adsession/CreativeType;->VIDEO:Lcom/iab/omid/library/applovin/adsession/CreativeType;

    sget-object v1, Lcom/iab/omid/library/applovin/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/applovin/adsession/ImpressionType;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/Owner;->NATIVE:Lcom/iab/omid/library/applovin/adsession/Owner;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Lcom/iab/omid/library/applovin/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/applovin/adsession/CreativeType;Lcom/iab/omid/library/applovin/adsession/ImpressionType;Lcom/iab/omid/library/applovin/adsession/Owner;Lcom/iab/omid/library/applovin/adsession/Owner;Z)Lcom/iab/omid/library/applovin/adsession/AdSessionConfiguration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 204
    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/lg;->c:Lcom/applovin/impl/sdk/n;

    iget-object v2, p0, Lcom/applovin/impl/lg;->d:Ljava/lang/String;

    const-string v3, "Failed to create ad session configuration"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected a(Landroid/webkit/WebView;)Lcom/iab/omid/library/applovin/adsession/AdSessionContext;
    .locals 8

    .line 976
    sget-boolean p1, Lcom/applovin/impl/rg;->p:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/rg;->h:Lcom/applovin/impl/aq;

    invoke-virtual {p1}, Lcom/applovin/impl/aq;->k1()Lcom/applovin/impl/cq;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 978
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 980
    iget-object v0, p0, Lcom/applovin/impl/rg;->h:Lcom/applovin/impl/aq;

    invoke-virtual {v0}, Lcom/applovin/impl/aq;->k1()Lcom/applovin/impl/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/cq;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/bq;

    .line 983
    invoke-virtual {v1}, Lcom/applovin/impl/bq;->c()Ljava/util/List;

    move-result-object v2

    .line 985
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 987
    invoke-virtual {v1}, Lcom/applovin/impl/bq;->b()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/fq;->f:Lcom/applovin/impl/fq;

    iget-object v3, p0, Lcom/applovin/impl/lg;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v3}, Lcom/applovin/impl/mq;->a(Ljava/util/Set;Lcom/applovin/impl/fq;Lcom/applovin/impl/sdk/j;)V

    goto :goto_1

    .line 992
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 993
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/impl/hq;

    .line 995
    invoke-virtual {v4}, Lcom/applovin/impl/hq;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "omid"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 997
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1002
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1004
    invoke-virtual {v1}, Lcom/applovin/impl/bq;->b()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/fq;->d:Lcom/applovin/impl/fq;

    iget-object v3, p0, Lcom/applovin/impl/lg;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v3}, Lcom/applovin/impl/mq;->a(Ljava/util/Set;Lcom/applovin/impl/fq;Lcom/applovin/impl/sdk/j;)V

    goto :goto_1

    .line 1009
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/impl/hq;

    .line 1014
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v4}, Lcom/applovin/impl/hq;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1015
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v4

    .line 1019
    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/applovin/impl/lg;->c:Lcom/applovin/impl/sdk/n;

    iget-object v6, p0, Lcom/applovin/impl/lg;->d:Ljava/lang/String;

    const-string v7, "Failed to parse JavaScript resource url"

    invoke-virtual {v5, v6, v7, v4}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1024
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1026
    invoke-virtual {v1}, Lcom/applovin/impl/bq;->b()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/fq;->f:Lcom/applovin/impl/fq;

    iget-object v3, p0, Lcom/applovin/impl/lg;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v3}, Lcom/applovin/impl/mq;->a(Ljava/util/Set;Lcom/applovin/impl/fq;Lcom/applovin/impl/sdk/j;)V

    goto/16 :goto_1

    .line 1031
    :cond_9
    invoke-virtual {v1}, Lcom/applovin/impl/bq;->e()Ljava/lang/String;

    move-result-object v3

    .line 1032
    invoke-virtual {v1}, Lcom/applovin/impl/bq;->d()Ljava/lang/String;

    move-result-object v4

    .line 1034
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1036
    invoke-virtual {v1}, Lcom/applovin/impl/bq;->b()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/fq;->f:Lcom/applovin/impl/fq;

    iget-object v3, p0, Lcom/applovin/impl/lg;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v3}, Lcom/applovin/impl/mq;->a(Ljava/util/Set;Lcom/applovin/impl/fq;Lcom/applovin/impl/sdk/j;)V

    goto/16 :goto_1

    .line 1041
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 1044
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1046
    invoke-static {v4, v2, v3}, Lcom/iab/omid/library/applovin/adsession/VerificationScriptResource;->createVerificationScriptResourceWithParameters(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/applovin/adsession/VerificationScriptResource;

    move-result-object v2

    goto :goto_5

    .line 1052
    :cond_b
    invoke-static {v2}, Lcom/iab/omid/library/applovin/adsession/VerificationScriptResource;->createVerificationScriptResourceWithoutParameters(Ljava/net/URL;)Lcom/iab/omid/library/applovin/adsession/VerificationScriptResource;

    move-result-object v2

    .line 1055
    :goto_5
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1060
    :cond_c
    iget-object v0, p0, Lcom/applovin/impl/lg;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->V()Lcom/applovin/impl/pg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/pg;->a()Ljava/lang/String;

    move-result-object v0

    .line 1061
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 1063
    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/applovin/impl/lg;->c:Lcom/applovin/impl/sdk/n;

    iget-object v0, p0, Lcom/applovin/impl/lg;->d:Ljava/lang/String;

    const-string v1, "JavaScript SDK content not loaded successfully"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-object v2

    .line 1071
    :cond_e
    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/lg;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->V()Lcom/applovin/impl/pg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/pg;->b()Lcom/iab/omid/library/applovin/adsession/Partner;

    move-result-object v1

    iget-object v3, p0, Lcom/applovin/impl/rg;->h:Lcom/applovin/impl/aq;

    .line 1074
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/b;->getOpenMeasurementContentUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/rg;->h:Lcom/applovin/impl/aq;

    .line 1075
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/ad/b;->getOpenMeasurementCustomReferenceData()Ljava/lang/String;

    move-result-object v4

    .line 1076
    invoke-static {v1, v0, p1, v3, v4}, Lcom/iab/omid/library/applovin/adsession/AdSessionContext;->createNativeAdSessionContext(Lcom/iab/omid/library/applovin/adsession/Partner;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/applovin/adsession/AdSessionContext;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 1084
    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/applovin/impl/lg;->c:Lcom/applovin/impl/sdk/n;

    iget-object v1, p0, Lcom/applovin/impl/lg;->d:Ljava/lang/String;

    const-string v3, "Failed to create ad session context"

    invoke-virtual {v0, v1, v3, p1}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_6
    return-object v2
.end method

.method protected a(Lcom/iab/omid/library/applovin/adsession/AdSession;)V
    .locals 3

    .line 971
    :try_start_0
    invoke-static {p1}, Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;->createMediaEvents(Lcom/iab/omid/library/applovin/adsession/AdSession;)Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/rg;->j:Lcom/iab/omid/library/applovin/adsession/media/MediaEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 975
    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/lg;->c:Lcom/applovin/impl/sdk/n;

    iget-object v1, p0, Lcom/applovin/impl/lg;->d:Ljava/lang/String;

    const-string v2, "Failed to create media events"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(FZ)V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/applovin/impl/rg;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda6;-><init>(Lcom/applovin/impl/rg;FZ)V

    const-string p1, "track started"

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 551
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda2;-><init>(Lcom/applovin/impl/rg;Z)V

    const-string p1, "track volume changed"

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 231
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda7;-><init>(Lcom/applovin/impl/rg;)V

    const-string v1, "track loaded"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public i()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/applovin/impl/rg;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda4;-><init>(Lcom/applovin/impl/rg;)V

    const-string v1, "buffer finished"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/applovin/impl/rg;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda10;-><init>(Lcom/applovin/impl/rg;)V

    const-string v1, "buffer started"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 2

    .line 319
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda8;-><init>(Lcom/applovin/impl/rg;)V

    const-string v1, "track clicked"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public w()V
    .locals 2

    .line 272
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda12;-><init>(Lcom/applovin/impl/rg;)V

    const-string v1, "track completed"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public x()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/applovin/impl/rg;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda3;-><init>(Lcom/applovin/impl/rg;)V

    const-string v1, "track first quartile"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/applovin/impl/rg;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/rg;)V

    const-string v1, "track midpoint"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    .line 280
    new-instance v0, Lcom/applovin/impl/rg$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/applovin/impl/rg$$ExternalSyntheticLambda5;-><init>(Lcom/applovin/impl/rg;)V

    const-string v1, "track paused"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/lg;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
