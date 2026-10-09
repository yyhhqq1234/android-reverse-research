.class public Lcom/subao/common/i/r;
.super Ljava/lang/Object;
.source "Message_VersionInfo.java"

# interfaces
.implements Lcom/subao/common/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/subao/common/i/r;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/subao/common/i/r;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/subao/common/i/r;->c:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/subao/common/i/r;->d:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/subao/common/i/r;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/subao/common/i/r;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/subao/common/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-ne p1, p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    instance-of v2, p1, Lcom/subao/common/i/r;

    if-nez v2, :cond_3

    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :cond_3
    check-cast p1, Lcom/subao/common/i/r;

    .line 65
    iget-object v2, p0, Lcom/subao/common/i/r;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/r;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/r;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/r;->b:Ljava/lang/String;

    .line 66
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/r;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/r;->c:Ljava/lang/String;

    .line 67
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/r;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/r;->d:Ljava/lang/String;

    .line 68
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
    .line 45
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 46
    const-string v0, "number"

    iget-object v1, p0, Lcom/subao/common/i/r;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 47
    const-string v0, "channel"

    iget-object v1, p0, Lcom/subao/common/i/r;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 48
    const-string v0, "osVersion"

    iget-object v1, p0, Lcom/subao/common/i/r;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 49
    const-string v0, "androidVersion"

    iget-object v1, p0, Lcom/subao/common/i/r;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 50
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 51
    return-void
.end method
