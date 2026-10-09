.class Lcom/subao/common/a/c$e;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/k/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/subao/common/g/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/subao/common/g/c;)V
    .locals 1

    .prologue
    .line 2163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/a/c$e;->a:Landroid/content/Context;

    .line 2165
    iput-object p2, p0, Lcom/subao/common/a/c$e;->b:Lcom/subao/common/g/c;

    .line 2166
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2170
    iget-object v2, p0, Lcom/subao/common/a/c$e;->b:Lcom/subao/common/g/c;

    const-string v3, "key_cellular_state_change"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v3, v0}, Lcom/subao/common/g/c;->a(ILjava/lang/String;I)V

    .line 2171
    const-string v1, "SubaoParallel"

    .line 2172
    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    if-eqz p1, :cond_2

    const-string v0, "Cellular available"

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile Switch State: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/subao/common/a/c$e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/subao/common/j/i;->a(Landroid/content/Context;)Lcom/subao/common/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subao/common/h;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2170
    goto :goto_0

    .line 2173
    :cond_2
    const-string v0, "Cellular lost"

    goto :goto_1
.end method
