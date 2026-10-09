.class abstract Lcom/subao/common/i/p$b;
.super Ljava/lang/Object;
.source "Message_Link.java"

# interfaces
.implements Lcom/subao/common/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(ZZLjava/lang/Integer;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-boolean p1, p0, Lcom/subao/common/i/p$b;->a:Z

    .line 234
    iput-boolean p2, p0, Lcom/subao/common/i/p$b;->b:Z

    .line 235
    iput-object p3, p0, Lcom/subao/common/i/p$b;->c:Ljava/lang/Integer;

    .line 236
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/util/JsonWriter;)V
.end method

.method protected abstract a(Lcom/subao/common/i/p$b;)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    if-ne p1, p0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 263
    goto :goto_0

    .line 265
    :cond_2
    instance-of v2, p1, Lcom/subao/common/i/p$b;

    if-nez v2, :cond_3

    move v0, v1

    .line 266
    goto :goto_0

    .line 268
    :cond_3
    check-cast p1, Lcom/subao/common/i/p$b;

    .line 269
    iget-boolean v2, p0, Lcom/subao/common/i/p$b;->a:Z

    iget-boolean v3, p1, Lcom/subao/common/i/p$b;->a:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/subao/common/i/p$b;->b:Z

    iget-boolean v3, p1, Lcom/subao/common/i/p$b;->b:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/p$b;->c:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/subao/common/i/p$b;->c:Ljava/lang/Integer;

    .line 271
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 272
    invoke-virtual {p0, p1}, Lcom/subao/common/i/p$b;->a(Lcom/subao/common/i/p$b;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public serialize(Landroid/util/JsonWriter;)V
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 241
    const-string/jumbo v0, "support"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/subao/common/i/p$b;->a:Z

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 242
    const-string v0, "open"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/subao/common/i/p$b;->b:Z

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 243
    const-string v0, "duration"

    iget-object v1, p0, Lcom/subao/common/i/p$b;->c:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 244
    invoke-virtual {p0, p1}, Lcom/subao/common/i/p$b;->a(Landroid/util/JsonWriter;)V

    .line 245
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    :try_start_0
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Lcom/subao/common/c;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
