.class Lcom/subao/common/e/y$b;
.super Ljava/lang/Object;
.source "LocalScripts.java"

# interfaces
.implements Lcom/subao/common/e/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/subao/common/e/y$b;->a:Ljava/io/RandomAccessFile;

    .line 67
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/subao/common/e/y$b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public a([B)I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/subao/common/e/y$b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/subao/common/e/y$b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 82
    return-void
.end method
