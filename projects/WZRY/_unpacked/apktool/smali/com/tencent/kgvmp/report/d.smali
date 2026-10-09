.class public Lcom/tencent/kgvmp/report/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/report/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([F)F
    .locals 4

    const/4 v1, 0x0

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(I[F)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/tencent/kgvmp/report/e;->v:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/report/e;->a(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/tencent/kgvmp/report/e;->v:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/kgvmp/report/e;->v:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/tencent/kgvmp/report/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/report/e;->a(J)V

    goto :goto_0
.end method
