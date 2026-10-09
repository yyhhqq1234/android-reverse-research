.class public Lcom/tencent/kgvmp/report/h;
.super Lcom/tencent/kgvmp/report/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/tencent/kgvmp/report/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/report/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/kgvmp/report/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/kgvmp/report/h;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/kgvmp/report/h;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/kgvmp/report/h;->d:Lcom/tencent/kgvmp/report/i;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/kgvmp/report/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/kgvmp/report/i;

    iget-object v0, v0, Lcom/tencent/kgvmp/report/i;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/tencent/kgvmp/report/j;->h(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/kgvmp/report/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/kgvmp/report/h;->b:I

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1, p2}, Lcom/tencent/kgvmp/report/e;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_2
    invoke-virtual {p0, p2}, Lcom/tencent/kgvmp/report/h;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/kgvmp/report/e;->g(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tencent/kgvmp/report/e;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_0
    :try_start_1
    const-string v1, "4"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    const-string v1, "5"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/tencent/kgvmp/report/e;->v:Ljava/lang/String;

    sget-object v1, Lcom/tencent/kgvmp/a/f;->PLAYING:Lcom/tencent/kgvmp/a/f;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/f;->getSceneID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/kgvmp/report/h;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/tencent/kgvmp/report/h;->a:Ljava/lang/String;

    const-string v1, "DataDealer:dealData: exception."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    :try_start_2
    invoke-direct {p0}, Lcom/tencent/kgvmp/report/h;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :sswitch_1
    sget-object v0, Lcom/tencent/kgvmp/a/d;->COMMOND_ID:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v0

    invoke-static {}, Lcom/tencent/kgvmp/report/g;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/report/e;->a(ILjava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tencent/kgvmp/report/e;->a(ILjava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(I[F)V
    .locals 5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget v1, p0, Lcom/tencent/kgvmp/report/h;->b:I

    sget v2, Lcom/tencent/kgvmp/a/b;->r:I

    if-lt v1, v2, :cond_2

    sget-object v2, Lcom/tencent/kgvmp/report/e;->v:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :cond_1
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_2

    invoke-direct {p0}, Lcom/tencent/kgvmp/report/h;->a()V

    :cond_2
    iget v0, p0, Lcom/tencent/kgvmp/report/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/kgvmp/report/h;->b:I

    iget-object v0, p0, Lcom/tencent/kgvmp/report/h;->d:Lcom/tencent/kgvmp/report/i;

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/kgvmp/report/i;

    iget v1, p0, Lcom/tencent/kgvmp/report/h;->b:I

    invoke-direct {v0, v1}, Lcom/tencent/kgvmp/report/i;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/kgvmp/report/h;->d:Lcom/tencent/kgvmp/report/i;

    :cond_3
    iget-object v0, p0, Lcom/tencent/kgvmp/report/h;->d:Lcom/tencent/kgvmp/report/i;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/report/i;->a()I

    move-result v0

    sget v1, Lcom/tencent/kgvmp/a/b;->s:I

    if-ge v0, v1, :cond_4

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Lcom/tencent/kgvmp/report/h;->a([F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/kgvmp/report/h;->d:Lcom/tencent/kgvmp/report/i;

    const-string v2, "_"

    invoke-static {p2, v2}, Lcom/tencent/kgvmp/f/a;->a([FLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/kgvmp/report/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/kgvmp/report/h;->d:Lcom/tencent/kgvmp/report/i;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/report/i;->a()I

    move-result v0

    sget v1, Lcom/tencent/kgvmp/a/b;->s:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/kgvmp/report/h;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/kgvmp/report/h;->d:Lcom/tencent/kgvmp/report/i;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/kgvmp/report/i;

    iget v1, p0, Lcom/tencent/kgvmp/report/h;->b:I

    invoke-direct {v0, v1}, Lcom/tencent/kgvmp/report/i;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/kgvmp/report/h;->d:Lcom/tencent/kgvmp/report/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/tencent/kgvmp/report/h;->a:Ljava/lang/String;

    const-string v1, "DataDealer:dealData: exception2."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x37
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
