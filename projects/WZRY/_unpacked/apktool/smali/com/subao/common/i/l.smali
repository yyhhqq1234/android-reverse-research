.class public Lcom/subao/common/i/l;
.super Ljava/lang/Object;
.source "Message_App.java"

# interfaces
.implements Lcom/subao/common/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/subao/common/i/l;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/subao/common/i/l;->b:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    if-ne p0, p1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    instance-of v2, p1, Lcom/subao/common/i/l;

    if-nez v2, :cond_3

    move v0, v1

    .line 30
    goto :goto_0

    .line 32
    :cond_3
    check-cast p1, Lcom/subao/common/i/l;

    .line 33
    iget-object v2, p0, Lcom/subao/common/i/l;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/l;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/l;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/l;->b:Ljava/lang/String;

    .line 34
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public serialize(Landroid/util/JsonWriter;)V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 40
    const-string v0, "AppLabel"

    iget-object v1, p0, Lcom/subao/common/i/l;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 41
    const-string v0, "PkgName"

    iget-object v1, p0, Lcom/subao/common/i/l;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 42
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 43
    return-void
.end method
