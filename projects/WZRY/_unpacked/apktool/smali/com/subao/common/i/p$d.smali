.class public Lcom/subao/common/i/p$d;
.super Ljava/lang/Object;
.source "Message_Link.java"

# interfaces
.implements Lcom/subao/common/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/subao/common/i/p$e;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/subao/common/i/p$e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/subao/common/i/p$d;->a:Lcom/subao/common/i/p$e;

    .line 195
    iput-object p2, p0, Lcom/subao/common/i/p$d;->b:Ljava/lang/String;

    .line 196
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    if-ne p1, p0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    instance-of v2, p1, Lcom/subao/common/i/p$d;

    if-nez v2, :cond_3

    move v0, v1

    .line 207
    goto :goto_0

    .line 209
    :cond_3
    check-cast p1, Lcom/subao/common/i/p$d;

    .line 210
    iget-object v2, p0, Lcom/subao/common/i/p$d;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/p$d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/p$d;->a:Lcom/subao/common/i/p$e;

    iget-object v3, p1, Lcom/subao/common/i/p$d;->a:Lcom/subao/common/i/p$e;

    .line 211
    invoke-virtual {v2, v3}, Lcom/subao/common/i/p$e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public serialize(Landroid/util/JsonWriter;)V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 217
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/subao/common/i/p$d;->a:Lcom/subao/common/i/p$e;

    invoke-static {p1, v0, v1}, Lcom/subao/common/i/e;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/i/c;)V

    .line 218
    const-string v0, "detail"

    iget-object v1, p0, Lcom/subao/common/i/p$d;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 219
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 220
    return-void
.end method
