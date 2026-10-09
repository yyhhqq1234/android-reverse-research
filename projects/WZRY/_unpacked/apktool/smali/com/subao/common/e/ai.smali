.class public Lcom/subao/common/e/ai;
.super Lcom/subao/common/e/ae;
.source "QosRegionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/ai$a;
    }
.end annotation


# static fields
.field private static a:Lcom/subao/common/e/ai$a;


# instance fields
.field private b:Lcom/subao/common/e/ai$a;

.field private final c:Lcom/subao/common/g/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/subao/common/e/ai;->a:Lcom/subao/common/e/ai$a;

    return-void
.end method

.method protected constructor <init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/subao/common/e/ae;-><init>(Lcom/subao/common/e/ab$a;)V

    .line 42
    new-instance v0, Lcom/subao/common/e/ai$a;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/subao/common/e/ai$a;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/subao/common/e/ai;->b:Lcom/subao/common/e/ai$a;

    .line 48
    iput-object p2, p0, Lcom/subao/common/e/ai;->c:Lcom/subao/common/g/c;

    .line 49
    return-void
.end method

.method public static a(II)Lcom/subao/common/l/f;
    .locals 7

    .prologue
    .line 78
    sget-object v0, Lcom/subao/common/e/ai;->a:Lcom/subao/common/e/ai$a;

    .line 79
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 80
    :goto_0
    const-string v1, "SubaoData"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "SubaoData"

    sget-object v2, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v3, "getQosParam(%d, %d) return %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 83
    invoke-static {v0}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 81
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-object v0

    .line 79
    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/subao/common/e/ai$a;->a(II)Lcom/subao/common/l/f;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/subao/common/e/ai;

    invoke-direct {v0, p0, p1}, Lcom/subao/common/e/ai;-><init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V

    .line 59
    invoke-static {v0}, Lcom/subao/common/e/ae;->a(Lcom/subao/common/e/ae;)V

    .line 60
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/subao/common/e/ai;->a:Lcom/subao/common/e/ai$a;

    .line 67
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/subao/common/e/ai$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "configs/qos_region"

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    iget-object v0, p0, Lcom/subao/common/e/ai;->b:Lcom/subao/common/e/ai$a;

    invoke-virtual {v0, p1, p2}, Lcom/subao/common/e/ai$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/subao/common/e/ae;->a(Z)V

    .line 105
    iget-object v0, p0, Lcom/subao/common/e/ai;->b:Lcom/subao/common/e/ai$a;

    sput-object v0, Lcom/subao/common/e/ai;->a:Lcom/subao/common/e/ai$a;

    .line 106
    invoke-static {}, Lcom/subao/common/l/k;->a()Lcom/subao/common/l/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subao/common/l/k;->b()V

    .line 107
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "QosRegion"

    return-object v0
.end method

.method b(Lcom/subao/common/e/ac;)V
    .locals 4

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/subao/common/e/ac;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/subao/common/e/ac;->c:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/subao/common/e/ac;->c:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 92
    iget-object v1, p0, Lcom/subao/common/e/ai;->c:Lcom/subao/common/g/c;

    const/4 v2, 0x0

    const-string v3, "key_qos_config"

    invoke-virtual {v1, v2, v3, v0}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/subao/common/e/ae;->b(Lcom/subao/common/e/ac;)V

    .line 95
    return-void
.end method
