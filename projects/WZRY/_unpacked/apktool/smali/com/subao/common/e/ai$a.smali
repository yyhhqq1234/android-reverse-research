.class Lcom/subao/common/e/ai$a;
.super Ljava/lang/Object;
.source "QosRegionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/subao/common/e/aj;",
            "Lcom/subao/common/l/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/subao/common/e/aj;",
            "Lcom/subao/common/l/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/subao/common/e/ai$a;->a:Ljava/util/Map;

    .line 131
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/subao/common/e/aj;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 143
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 152
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/subao/common/e/ai$a;->b(Ljava/lang/String;)I

    move-result v2

    .line 149
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/subao/common/e/ai$a;->b(Ljava/lang/String;)I

    move-result v3

    .line 150
    new-instance v1, Lcom/subao/common/e/aj;

    invoke-direct {v1, v2, v3}, Lcom/subao/common/e/aj;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 157
    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, -0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method a(II)Lcom/subao/common/l/f;
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/subao/common/e/ai$a;->a:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/subao/common/e/ai$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subao/common/e/aj;

    .line 190
    iget v3, v1, Lcom/subao/common/e/aj;->a:I

    if-ltz v3, :cond_1

    iget v3, v1, Lcom/subao/common/e/aj;->a:I

    if-ne v3, p1, :cond_0

    .line 191
    :cond_1
    iget v3, v1, Lcom/subao/common/e/aj;->b:I

    if-ltz v3, :cond_2

    iget v1, v1, Lcom/subao/common/e/aj;->b:I

    if-ne v1, p2, :cond_0

    .line 192
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/l/f;

    .line 197
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 164
    if-eqz p1, :cond_0

    const-string v0, "cfg_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    if-nez p2, :cond_2

    .line 168
    const-string p2, ""

    .line 170
    :cond_2
    const-string v0, "cfg_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/e/ai$a;->a(Ljava/lang/String;)Lcom/subao/common/e/aj;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-static {p2}, Lcom/subao/common/l/f;->a(Ljava/lang/String;)Lcom/subao/common/l/f;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/subao/common/e/ai$a;->a:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/subao/common/e/ai$a;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subao/common/e/ai$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 202
    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    if-ne p1, p0, :cond_2

    .line 206
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :cond_2
    instance-of v1, p1, Lcom/subao/common/e/ai$a;

    if-eqz v1, :cond_0

    .line 211
    check-cast p1, Lcom/subao/common/e/ai$a;

    .line 212
    iget-object v0, p0, Lcom/subao/common/e/ai$a;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/subao/common/e/ai$a;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 217
    sget-object v2, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v3, "[QosRegion and Params: count=%d]"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/subao/common/e/ai$a;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/subao/common/e/ai$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method
