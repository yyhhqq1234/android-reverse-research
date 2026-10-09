.class Lcom/subao/common/b/f;
.super Ljava/lang/Object;
.source "JWTPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/b/f$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/subao/common/b/f$a;


# direct methods
.method private constructor <init>(Lcom/subao/common/b/f$a;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/subao/common/b/f;->a:Lcom/subao/common/b/f$a;

    .line 23
    return-void
.end method

.method static a(Landroid/util/JsonReader;)Lcom/subao/common/b/f;
    .locals 3

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 49
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 50
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 51
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/b/f$a;->a(Ljava/lang/String;)Lcom/subao/common/b/f$a;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    new-instance v1, Lcom/subao/common/b/f;

    invoke-direct {v1, v0}, Lcom/subao/common/b/f;-><init>(Lcom/subao/common/b/f$a;)V

    return-object v1
.end method
