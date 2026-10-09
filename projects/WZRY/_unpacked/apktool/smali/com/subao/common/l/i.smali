.class Lcom/subao/common/l/i;
.super Ljava/lang/Object;
.source "QosSetupResponse.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/subao/common/l/i;->a:I

    .line 72
    iput-object p2, p0, Lcom/subao/common/l/i;->b:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/subao/common/l/i;->c:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/subao/common/l/i;->d:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/subao/common/l/i;->e:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lcom/subao/common/l/i;->f:Ljava/lang/String;

    .line 77
    iput-object p7, p0, Lcom/subao/common/l/i;->g:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static a(Landroid/util/JsonReader;)Lcom/subao/common/l/i;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 86
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move-object v7, v0

    move-object v6, v0

    move-object v5, v0

    move-object v4, v0

    move-object v3, v0

    move-object v2, v0

    .line 95
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v8, "resultCode"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_0

    .line 99
    :cond_0
    const-string v8, "errorInfo"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 100
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 101
    :cond_1
    const-string v8, "sessionId"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 102
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 103
    :cond_2
    const-string v8, "speedingId"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 104
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 105
    :cond_3
    const-string v8, "operator"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 106
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 107
    :cond_4
    const-string v8, "operatorCode"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 108
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 109
    :cond_5
    const-string/jumbo v8, "vendor"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 112
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 115
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 116
    new-instance v0, Lcom/subao/common/l/i;

    invoke-direct/range {v0 .. v7}, Lcom/subao/common/l/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a([B)Lcom/subao/common/l/i;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 82
    invoke-static {v0}, Lcom/subao/common/l/i;->a(Landroid/util/JsonReader;)Lcom/subao/common/l/i;

    move-result-object v0

    return-object v0
.end method
