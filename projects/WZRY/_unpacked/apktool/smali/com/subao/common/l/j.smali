.class Lcom/subao/common/l/j;
.super Ljava/lang/Object;
.source "QosTerminalInfo.java"

# interfaces
.implements Lcom/subao/common/c;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 21
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/l/j;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/subao/common/l/j;->d:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/subao/common/l/j;->a:I

    .line 27
    iput-object p3, p0, Lcom/subao/common/l/j;->b:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/subao/common/l/j;->c:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/subao/common/l/j;->e:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/subao/common/l/j;->f:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/subao/common/l/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/subao/common/l/j;->f:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/subao/common/l/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/subao/common/l/j;->e:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/subao/common/l/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/subao/common/l/j;->d:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p1, p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    instance-of v2, p1, Lcom/subao/common/l/j;

    if-nez v2, :cond_3

    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :cond_3
    check-cast p1, Lcom/subao/common/l/j;

    .line 69
    iget v2, p0, Lcom/subao/common/l/j;->a:I

    iget v3, p1, Lcom/subao/common/l/j;->a:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/j;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/j;->d:Ljava/lang/String;

    .line 70
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/j;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/j;->b:Ljava/lang/String;

    .line 71
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/j;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/j;->c:Ljava/lang/String;

    .line 72
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/j;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/j;->e:Ljava/lang/String;

    .line 73
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/j;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/j;->f:Ljava/lang/String;

    .line 74
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public serialize(Landroid/util/JsonWriter;)V
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 80
    const-string v0, "privateIp"

    iget-object v1, p0, Lcom/subao/common/l/j;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 81
    const-string v0, "srcPort"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/l/j;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 82
    const-string v0, "publicIp"

    iget-object v1, p0, Lcom/subao/common/l/j;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 83
    const-string v0, "imsi"

    iget-object v1, p0, Lcom/subao/common/l/j;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 84
    const-string v0, "msisdn"

    iget-object v1, p0, Lcom/subao/common/l/j;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 85
    const-string v0, "securityToken"

    iget-object v1, p0, Lcom/subao/common/l/j;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 86
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 87
    return-void
.end method
