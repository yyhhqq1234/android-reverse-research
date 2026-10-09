.class public Lcom/subao/common/i/o;
.super Ljava/lang/Object;
.source "Message_Installation.java"

# interfaces
.implements Lcom/subao/common/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/i/o$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/subao/common/i/o$a;

.field public final c:Lcom/subao/common/i/m;

.field public final d:Lcom/subao/common/i/r;

.field public final e:Lcom/subao/common/e/g;


# direct methods
.method public constructor <init>(Lcom/subao/common/e/g;JLcom/subao/common/i/o$a;Lcom/subao/common/i/m;Lcom/subao/common/i/r;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p2, p0, Lcom/subao/common/i/o;->a:J

    .line 30
    iput-object p4, p0, Lcom/subao/common/i/o;->b:Lcom/subao/common/i/o$a;

    .line 31
    iput-object p5, p0, Lcom/subao/common/i/o;->c:Lcom/subao/common/i/m;

    .line 32
    iput-object p6, p0, Lcom/subao/common/i/o;->d:Lcom/subao/common/i/r;

    .line 33
    iput-object p1, p0, Lcom/subao/common/i/o;->e:Lcom/subao/common/e/g;

    .line 34
    return-void
.end method


# virtual methods
.method public serialize(Landroid/util/JsonWriter;)V
    .locals 4

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 39
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/subao/common/i/o;->a:J

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 40
    iget-object v0, p0, Lcom/subao/common/i/o;->b:Lcom/subao/common/i/o$a;

    if-eqz v0, :cond_0

    .line 41
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 42
    iget-object v0, p0, Lcom/subao/common/i/o;->b:Lcom/subao/common/i/o$a;

    invoke-virtual {v0, p1}, Lcom/subao/common/i/o$a;->serialize(Landroid/util/JsonWriter;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/subao/common/i/o;->c:Lcom/subao/common/i/m;

    if-eqz v0, :cond_1

    .line 45
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 46
    iget-object v0, p0, Lcom/subao/common/i/o;->c:Lcom/subao/common/i/m;

    invoke-virtual {v0, p1}, Lcom/subao/common/i/m;->serialize(Landroid/util/JsonWriter;)V

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/subao/common/i/o;->d:Lcom/subao/common/i/r;

    if-eqz v0, :cond_2

    .line 50
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 51
    iget-object v0, p0, Lcom/subao/common/i/o;->d:Lcom/subao/common/i/r;

    invoke-virtual {v0, p1}, Lcom/subao/common/i/r;->serialize(Landroid/util/JsonWriter;)V

    .line 53
    :cond_2
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/subao/common/i/o;->e:Lcom/subao/common/e/g;

    invoke-static {p1, v0, v1}, Lcom/subao/common/i/e;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/i/c;)V

    .line 54
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 55
    return-void
.end method
