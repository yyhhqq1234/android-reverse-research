.class public Lcom/subao/common/i/q$b;
.super Ljava/lang/Object;
.source "Message_Start.java"

# interfaces
.implements Lcom/subao/common/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/subao/common/i/q$a;

.field public final b:Ljava/lang/String;


# virtual methods
.method public serialize(Landroid/util/JsonWriter;)V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 64
    iget-object v0, p0, Lcom/subao/common/i/q$b;->a:Lcom/subao/common/i/q$a;

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 66
    iget-object v0, p0, Lcom/subao/common/i/q$b;->a:Lcom/subao/common/i/q$a;

    iget v0, v0, Lcom/subao/common/i/q$a;->f:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 68
    :cond_0
    const-string v0, "note"

    iget-object v1, p0, Lcom/subao/common/i/q$b;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 69
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 70
    return-void
.end method
