.class public Lcom/subao/common/i/o$a;
.super Ljava/lang/Object;
.source "Message_Installation.java"

# interfaces
.implements Lcom/subao/common/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/subao/common/i/o$a;->a:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/subao/common/i/o$a;->b:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/subao/common/i/o$a;->c:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/subao/common/i/o$a;->d:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/subao/common/i/o$a;->e:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/subao/common/i/o$a;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 79
    .line 80
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 79
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 85
    :goto_0
    new-instance v0, Lcom/subao/common/i/o$a;

    .line 86
    invoke-static {p0}, Lcom/subao/common/n/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 88
    invoke-static {p0}, Lcom/subao/common/n/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {p0}, Lcom/subao/common/n/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/i/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v5, ""

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    if-ne p1, p0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 110
    goto :goto_0

    .line 112
    :cond_2
    instance-of v2, p1, Lcom/subao/common/i/o$a;

    if-nez v2, :cond_3

    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_3
    check-cast p1, Lcom/subao/common/i/o$a;

    .line 116
    iget-object v2, p0, Lcom/subao/common/i/o$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/o$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/o$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/o$a;->b:Ljava/lang/String;

    .line 117
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/o$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/o$a;->c:Ljava/lang/String;

    .line 118
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/o$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/o$a;->d:Ljava/lang/String;

    .line 119
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/o$a;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/o$a;->e:Ljava/lang/String;

    .line 120
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
    .line 95
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 96
    const-string v0, "imsi"

    iget-object v1, p0, Lcom/subao/common/i/o$a;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 97
    const-string v0, "sn"

    iget-object v1, p0, Lcom/subao/common/i/o$a;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 98
    const-string v0, "mac"

    iget-object v1, p0, Lcom/subao/common/i/o$a;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 99
    const-string v0, "deviceId"

    iget-object v1, p0, Lcom/subao/common/i/o$a;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 100
    const-string v0, "androidId"

    iget-object v1, p0, Lcom/subao/common/i/o$a;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 101
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 102
    return-void
.end method
