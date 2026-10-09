.class public Lcom/subao/common/l/a;
.super Ljava/lang/Object;
.source "QosEventBuilder.java"


# instance fields
.field private final a:Lcom/subao/common/l/c$a;

.field private final b:I

.field private c:Ljava/lang/Exception;

.field private d:Lcom/subao/common/l/h;

.field private e:[B


# direct methods
.method public constructor <init>(Lcom/subao/common/l/c$a;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/subao/common/l/a;->a:Lcom/subao/common/l/c$a;

    .line 23
    iput p2, p0, Lcom/subao/common/l/a;->b:I

    .line 24
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    if-eqz p2, :cond_0

    .line 28
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    return-object p0
.end method


# virtual methods
.method public a()Lcom/subao/common/i/n$a;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 35
    const-string v1, "error"

    iget v2, p0, Lcom/subao/common/l/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "action"

    iget-object v2, p0, Lcom/subao/common/l/a;->a:Lcom/subao/common/l/c$a;

    invoke-virtual {v2}, Lcom/subao/common/l/c$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lcom/subao/common/l/a;->c:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "ex_type"

    iget-object v2, p0, Lcom/subao/common/l/a;->c:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/subao/common/l/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 39
    const-string v1, "ex_msg"

    iget-object v2, p0, Lcom/subao/common/l/a;->c:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/subao/common/l/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/subao/common/l/a;->d:Lcom/subao/common/l/h;

    if-eqz v1, :cond_1

    .line 42
    const-string v1, "operator"

    iget-object v2, p0, Lcom/subao/common/l/a;->d:Lcom/subao/common/l/h;

    invoke-virtual {v2}, Lcom/subao/common/l/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/subao/common/l/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 43
    iget-object v1, p0, Lcom/subao/common/l/a;->d:Lcom/subao/common/l/h;

    iget-object v1, v1, Lcom/subao/common/l/h;->f:Lcom/subao/common/l/j;

    .line 44
    if-eqz v1, :cond_1

    .line 45
    const-string v2, "private_ip"

    invoke-virtual {v1}, Lcom/subao/common/l/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/subao/common/l/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 46
    const-string v2, "msisdn"

    invoke-virtual {v1}, Lcom/subao/common/l/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/subao/common/l/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 47
    const-string/jumbo v2, "token"

    invoke-virtual {v1}, Lcom/subao/common/l/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/subao/common/l/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/subao/common/l/a;->e:[B

    if-eqz v1, :cond_2

    .line 51
    const-string v1, "raw"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/l/a;->e:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v1, v2}, Lcom/subao/common/l/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 53
    :cond_2
    new-instance v1, Lcom/subao/common/i/n$a;

    const-string v2, "qos_error"

    invoke-direct {v1, v2, v0}, Lcom/subao/common/i/n$a;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public a(Lcom/subao/common/l/h;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/subao/common/l/a;->d:Lcom/subao/common/l/h;

    .line 62
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/subao/common/l/a;->c:Ljava/lang/Exception;

    .line 58
    return-void
.end method

.method public a([B)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/subao/common/l/a;->e:[B

    .line 66
    return-void
.end method
