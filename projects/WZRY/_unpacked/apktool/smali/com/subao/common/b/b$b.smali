.class public Lcom/subao/common/b/b$b;
.super Ljava/lang/Object;
.source "AuthExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 673
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "userConfig"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "serviceConfig"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "scriptId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/subao/common/b/b$b;->d:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-object p1, p0, Lcom/subao/common/b/b$b;->a:Ljava/lang/String;

    .line 683
    iput-object p2, p0, Lcom/subao/common/b/b$b;->b:Ljava/lang/String;

    .line 684
    iput-object p3, p0, Lcom/subao/common/b/b$b;->c:Ljava/lang/String;

    .line 685
    return-void
.end method

.method static a([B)Lcom/subao/common/b/b$b;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 688
    if-eqz p0, :cond_0

    array-length v1, p0

    if-ge v1, v8, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-object v0

    .line 691
    :cond_1
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    .line 692
    new-instance v5, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 694
    :try_start_0
    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V

    .line 695
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 696
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    .line 698
    sget-object v1, Lcom/subao/common/b/b$b;->d:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_5

    .line 699
    sget-object v7, Lcom/subao/common/b/b$b;->d:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 700
    invoke-static {v5}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    move v1, v2

    .line 705
    :goto_3
    if-nez v1, :cond_2

    .line 706
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 710
    :catch_0
    move-exception v1

    .line 715
    invoke-static {v5}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 698
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 709
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    invoke-static {v5}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 717
    new-instance v0, Lcom/subao/common/b/b$b;

    aget-object v1, v4, v3

    aget-object v2, v4, v2

    aget-object v3, v4, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/b/b$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :catch_1
    move-exception v1

    .line 715
    invoke-static {v5}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_5
    move v1, v3

    goto :goto_3
.end method
