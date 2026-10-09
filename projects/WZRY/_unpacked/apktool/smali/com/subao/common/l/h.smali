.class public Lcom/subao/common/l/h;
.super Ljava/lang/Object;
.source "QosSetupRequest.java"

# interfaces
.implements Lcom/subao/common/c;


# instance fields
.field public final a:Lcom/subao/common/e/g;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Lcom/subao/common/l/j;

.field private final g:[Lcom/subao/common/l/d;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/subao/common/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/l/j;Lcom/subao/common/l/d;)V
    .locals 8

    .prologue
    .line 43
    if-nez p7, :cond_0

    const/4 v7, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/subao/common/l/h;-><init>(Lcom/subao/common/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/l/j;[Lcom/subao/common/l/d;)V

    .line 45
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x1

    new-array v7, v0, [Lcom/subao/common/l/d;

    const/4 v0, 0x0

    aput-object p7, v7, v0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/subao/common/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/l/j;[Lcom/subao/common/l/d;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/subao/common/l/h;->a:Lcom/subao/common/e/g;

    .line 29
    iput-object p2, p0, Lcom/subao/common/l/h;->b:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/subao/common/l/h;->c:Ljava/lang/String;

    .line 31
    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    iput-object p4, p0, Lcom/subao/common/l/h;->d:Ljava/lang/String;

    .line 32
    iput p5, p0, Lcom/subao/common/l/h;->e:I

    .line 33
    iput-object p6, p0, Lcom/subao/common/l/h;->f:Lcom/subao/common/l/j;

    .line 34
    iput-object p7, p0, Lcom/subao/common/l/h;->g:[Lcom/subao/common/l/d;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/subao/common/l/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/subao/common/l/h;->f:Lcom/subao/common/l/j;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/subao/common/l/h;->f:Lcom/subao/common/l/j;

    invoke-virtual {v0, p1}, Lcom/subao/common/l/j;->a(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/subao/common/l/h;->f:Lcom/subao/common/l/j;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/subao/common/l/h;->f:Lcom/subao/common/l/j;

    invoke-virtual {v0, p1}, Lcom/subao/common/l/j;->b(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/subao/common/l/h;->f:Lcom/subao/common/l/j;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/subao/common/l/h;->f:Lcom/subao/common/l/j;

    invoke-virtual {v0, p1}, Lcom/subao/common/l/j;->c(Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/subao/common/l/h;->h:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public serialize(Landroid/util/JsonWriter;)V
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 80
    const-string v0, "appType"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/l/h;->a:Lcom/subao/common/e/g;

    invoke-virtual {v1}, Lcom/subao/common/e/g;->a()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 81
    const-string v0, "channel"

    iget-object v1, p0, Lcom/subao/common/l/h;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 82
    const-string/jumbo v0, "versionNum"

    iget-object v1, p0, Lcom/subao/common/l/h;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 83
    const-string/jumbo v0, "userId"

    iget-object v1, p0, Lcom/subao/common/l/h;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 84
    const-string v0, "operator"

    iget-object v1, p0, Lcom/subao/common/l/h;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 85
    const-string/jumbo v0, "timeLength"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/l/h;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 86
    const-string/jumbo v0, "terminalInfo"

    iget-object v1, p0, Lcom/subao/common/l/h;->f:Lcom/subao/common/l/j;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 87
    iget-object v0, p0, Lcom/subao/common/l/h;->g:[Lcom/subao/common/l/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/subao/common/l/h;->g:[Lcom/subao/common/l/d;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 88
    const-string v0, "mediaInfo"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 89
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 90
    iget-object v1, p0, Lcom/subao/common/l/h;->g:[Lcom/subao/common/l/d;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 91
    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 96
    return-void
.end method
