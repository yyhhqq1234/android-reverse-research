.class Lcom/subao/common/l/d;
.super Ljava/lang/Object;
.source "QosMediaInfo.java"

# interfaces
.implements Lcom/subao/common/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/subao/common/l/d;->a:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/subao/common/l/d;->b:I

    .line 45
    iput-object p3, p0, Lcom/subao/common/l/d;->c:Ljava/lang/String;

    .line 46
    iput p4, p0, Lcom/subao/common/l/d;->d:I

    .line 47
    iput-object p5, p0, Lcom/subao/common/l/d;->e:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-ne p1, p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    instance-of v2, p1, Lcom/subao/common/l/d;

    if-nez v2, :cond_3

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    check-cast p1, Lcom/subao/common/l/d;

    .line 62
    iget v2, p0, Lcom/subao/common/l/d;->b:I

    iget v3, p1, Lcom/subao/common/l/d;->b:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/subao/common/l/d;->d:I

    iget v3, p1, Lcom/subao/common/l/d;->d:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/d;->a:Ljava/lang/String;

    .line 64
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/d;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/d;->c:Ljava/lang/String;

    .line 65
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/d;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/d;->e:Ljava/lang/String;

    .line 66
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
    .line 71
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 72
    const-string v0, "srcIp"

    iget-object v1, p0, Lcom/subao/common/l/d;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 73
    const-string v0, "srcPort"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/l/d;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 74
    const-string v0, "dstIp"

    iget-object v1, p0, Lcom/subao/common/l/d;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 75
    const-string v0, "dstPort"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/l/d;->d:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 76
    const-string v0, "protocol"

    iget-object v1, p0, Lcom/subao/common/l/d;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 77
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 78
    return-void
.end method
