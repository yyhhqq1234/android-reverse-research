.class public Lcom/tencent/kgvmp/report/c;
.super Lcom/tencent/kgvmp/report/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/kgvmp/report/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/report/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/kgvmp/report/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/kgvmp/report/c;->b:Lcom/tencent/kgvmp/report/i;

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
    invoke-virtual {p0, p2}, Lcom/tencent/kgvmp/report/c;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/kgvmp/report/e;->g(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tencent/kgvmp/report/e;->a(ILjava/lang/String;)V

    goto :goto_0

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

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(I[F)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/kgvmp/report/c;->b:Lcom/tencent/kgvmp/report/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/kgvmp/report/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/kgvmp/report/i;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/kgvmp/report/c;->b:Lcom/tencent/kgvmp/report/i;

    :cond_1
    iget-object v0, p0, Lcom/tencent/kgvmp/report/c;->b:Lcom/tencent/kgvmp/report/i;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/report/i;->a()I

    move-result v0

    sget v1, Lcom/tencent/kgvmp/a/b;->s:I

    if-ge v0, v1, :cond_2

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Lcom/tencent/kgvmp/report/c;->a([F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/kgvmp/report/c;->b:Lcom/tencent/kgvmp/report/i;

    const-string v2, "_"

    invoke-static {p2, v2}, Lcom/tencent/kgvmp/f/a;->a([FLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/kgvmp/report/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/kgvmp/report/c;->b:Lcom/tencent/kgvmp/report/i;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/report/i;->a()I

    move-result v0

    sget v1, Lcom/tencent/kgvmp/a/b;->s:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/kgvmp/report/c;->b:Lcom/tencent/kgvmp/report/i;

    iget-object v0, v0, Lcom/tencent/kgvmp/report/i;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/tencent/kgvmp/report/j;->h(Ljava/util/HashMap;)V

    new-instance v0, Lcom/tencent/kgvmp/report/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/kgvmp/report/i;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/kgvmp/report/c;->b:Lcom/tencent/kgvmp/report/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/tencent/kgvmp/report/c;->a:Ljava/lang/String;

    const-string v1, "DataDealer:dealData: exception2."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
