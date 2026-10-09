.class public Lcom/subao/common/i/a;
.super Ljava/lang/Object;
.source "MessageBuilder.java"


# instance fields
.field private final a:Lcom/subao/common/e/g;

.field private final b:Lcom/subao/common/i/r;

.field private final c:Lcom/subao/common/i/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/subao/common/e/g;Lcom/subao/common/i/r;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/subao/common/i/a;->a:Lcom/subao/common/e/g;

    .line 27
    iput-object p3, p0, Lcom/subao/common/i/a;->b:Lcom/subao/common/i/r;

    .line 28
    new-instance v0, Lcom/subao/common/i/m;

    invoke-direct {v0, p1}, Lcom/subao/common/i/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/subao/common/i/a;->c:Lcom/subao/common/i/m;

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/subao/common/i/l;
    .locals 4

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    new-instance v2, Lcom/subao/common/i/l;

    invoke-direct {v2, v0, v1}, Lcom/subao/common/i/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/i/n$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    new-instance v1, Lcom/subao/common/i/n$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/subao/common/i/n$a;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-object v0
.end method


# virtual methods
.method public a(Lcom/subao/common/i/k;IIZ)Lcom/subao/common/i/n;
    .locals 3

    .prologue
    .line 143
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 144
    const-string v0, "result"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "net"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v2, "accel"

    if-eqz p4, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v0, "tg_accel_recommend"

    invoke-direct {p0, v0, v1}, Lcom/subao/common/i/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subao/common/i/a;->a(Lcom/subao/common/i/k;Ljava/util/List;)Lcom/subao/common/i/n;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public a(Lcom/subao/common/i/k;Ljava/lang/String;Ljava/lang/String;)Lcom/subao/common/i/n;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 130
    const-string v1, "param"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-direct {p0, p2, v0}, Lcom/subao/common/i/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/subao/common/i/a;->a(Lcom/subao/common/i/k;Ljava/util/List;)Lcom/subao/common/i/n;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/subao/common/i/k;Ljava/util/List;)Lcom/subao/common/i/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/i/k;",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/i/n$a;",
            ">;)",
            "Lcom/subao/common/i/n;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/subao/common/i/n;

    iget-object v1, p0, Lcom/subao/common/i/a;->a:Lcom/subao/common/e/g;

    iget-object v2, p0, Lcom/subao/common/i/a;->b:Lcom/subao/common/i/r;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/subao/common/i/n;-><init>(Lcom/subao/common/i/k;Lcom/subao/common/e/g;Lcom/subao/common/i/r;Ljava/util/List;)V

    return-object v0
.end method

.method public a(JLcom/subao/common/i/o$a;)Lcom/subao/common/i/o;
    .locals 7

    .prologue
    .line 104
    new-instance v0, Lcom/subao/common/i/o;

    iget-object v1, p0, Lcom/subao/common/i/a;->a:Lcom/subao/common/e/g;

    iget-object v5, p0, Lcom/subao/common/i/a;->c:Lcom/subao/common/i/m;

    iget-object v6, p0, Lcom/subao/common/i/a;->b:Lcom/subao/common/i/r;

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/i/o;-><init>(Lcom/subao/common/e/g;JLcom/subao/common/i/o$a;Lcom/subao/common/i/m;Lcom/subao/common/i/r;)V

    return-object v0
.end method

.method public a(Lcom/subao/common/i/k;II)Lcom/subao/common/i/q;
    .locals 8

    .prologue
    .line 92
    new-instance v0, Lcom/subao/common/i/q;

    sget-object v2, Lcom/subao/common/i/q$c;->b:Lcom/subao/common/i/q$c;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/subao/common/i/a;->b:Lcom/subao/common/i/r;

    iget-object v7, p0, Lcom/subao/common/i/a;->a:Lcom/subao/common/e/g;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/subao/common/i/q;-><init>(Lcom/subao/common/i/k;Lcom/subao/common/i/q$c;IILcom/subao/common/i/q$b;Lcom/subao/common/i/r;Lcom/subao/common/e/g;)V

    return-object v0
.end method

.method public a()Lcom/subao/common/i/r;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/subao/common/i/a;->b:Lcom/subao/common/i/r;

    return-object v0
.end method

.method public b()Lcom/subao/common/i/m;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/subao/common/i/a;->c:Lcom/subao/common/i/m;

    return-object v0
.end method
