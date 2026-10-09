.class public Lcom/subao/common/i/n;
.super Ljava/lang/Object;
.source "Message_EventMsg.java"

# interfaces
.implements Lcom/subao/common/c;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/i/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subao/common/c;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/subao/common/i/n$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/subao/common/i/k;

.field public final b:Lcom/subao/common/e/g;

.field public final c:Lcom/subao/common/i/r;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/i/n$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/subao/common/i/k;Lcom/subao/common/e/g;Lcom/subao/common/i/r;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/i/k;",
            "Lcom/subao/common/e/g;",
            "Lcom/subao/common/i/r;",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/i/n$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/subao/common/i/n;->a:Lcom/subao/common/i/k;

    .line 53
    iput-object p2, p0, Lcom/subao/common/i/n;->b:Lcom/subao/common/e/g;

    .line 54
    iput-object p3, p0, Lcom/subao/common/i/n;->c:Lcom/subao/common/i/r;

    .line 55
    iput-object p4, p0, Lcom/subao/common/i/n;->d:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/subao/common/i/n;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subao/common/i/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/subao/common/i/n$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/subao/common/i/n;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/subao/common/i/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/subao/common/i/n$1;

    invoke-direct {v0, p0}, Lcom/subao/common/i/n$1;-><init>(Lcom/subao/common/i/n;)V

    goto :goto_0
.end method

.method public serialize(Landroid/util/JsonWriter;)V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 93
    const-string v0, "id"

    iget-object v1, p0, Lcom/subao/common/i/n;->a:Lcom/subao/common/i/k;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 94
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/subao/common/i/n;->b:Lcom/subao/common/e/g;

    invoke-static {p1, v0, v1}, Lcom/subao/common/i/e;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/i/c;)V

    .line 95
    const-string/jumbo v0, "version"

    iget-object v1, p0, Lcom/subao/common/i/n;->c:Lcom/subao/common/i/r;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 97
    invoke-virtual {p0}, Lcom/subao/common/i/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "events"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 99
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 100
    invoke-virtual {p0}, Lcom/subao/common/i/n;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/i/n$a;

    .line 101
    invoke-virtual {v0, p1}, Lcom/subao/common/i/n$a;->serialize(Landroid/util/JsonWriter;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 239
    sget-object v2, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v3, "[Message_Event: count=%d]"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/subao/common/i/n;->d:Ljava/util/List;

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
    iget-object v0, p0, Lcom/subao/common/i/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
