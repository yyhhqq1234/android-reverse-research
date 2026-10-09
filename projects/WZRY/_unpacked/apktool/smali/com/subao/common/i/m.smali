.class public Lcom/subao/common/i/m;
.super Ljava/lang/Object;
.source "Message_DeviceInfo.java"

# interfaces
.implements Lcom/subao/common/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 59
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/subao/common/n/e$a;->c()J

    move-result-wide v2

    long-to-int v2, v2

    .line 62
    invoke-static {}, Lcom/subao/common/n/e$a;->b()I

    move-result v3

    .line 63
    invoke-static {p1}, Lcom/subao/common/n/e;->d(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    long-to-int v4, v4

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object v0, p0

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/subao/common/i/m;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/subao/common/i/m;->a:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/subao/common/i/m;->b:I

    .line 53
    iput p3, p0, Lcom/subao/common/i/m;->c:I

    .line 54
    iput p4, p0, Lcom/subao/common/i/m;->d:I

    .line 55
    iput-object p5, p0, Lcom/subao/common/i/m;->e:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/subao/common/i/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/subao/common/i/m;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/subao/common/i/m;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/subao/common/i/m;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/subao/common/i/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    if-ne p1, p0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 85
    goto :goto_0

    .line 87
    :cond_2
    instance-of v2, p1, Lcom/subao/common/i/m;

    if-nez v2, :cond_3

    move v0, v1

    .line 88
    goto :goto_0

    .line 90
    :cond_3
    check-cast p1, Lcom/subao/common/i/m;

    .line 91
    iget v2, p0, Lcom/subao/common/i/m;->b:I

    iget v3, p1, Lcom/subao/common/i/m;->b:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/subao/common/i/m;->c:I

    iget v3, p1, Lcom/subao/common/i/m;->c:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/subao/common/i/m;->d:I

    iget v3, p1, Lcom/subao/common/i/m;->d:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/m;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/m;->a:Ljava/lang/String;

    .line 94
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/m;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/m;->e:Ljava/lang/String;

    .line 95
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
    .line 70
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 71
    const-string v0, "model"

    iget-object v1, p0, Lcom/subao/common/i/m;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 72
    const-string v0, "cpuSpeed"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/i/m;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 73
    const-string v0, "cpuCore"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/i/m;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 74
    const-string v0, "memory"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/i/m;->d:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 75
    const-string v0, "rom"

    iget-object v1, p0, Lcom/subao/common/i/m;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 76
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 77
    return-void
.end method
