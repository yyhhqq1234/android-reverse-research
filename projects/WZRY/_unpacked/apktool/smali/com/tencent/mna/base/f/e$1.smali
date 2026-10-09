.class final Lcom/tencent/mna/base/f/e$1;
.super Ljava/lang/Object;
.source "FileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/base/f/e;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tencent/mna/base/f/e$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/base/f/e$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mna/base/f/e$1;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/tencent/mna/base/f/e$1;->d:J

    iput p6, p0, Lcom/tencent/mna/base/f/e$1;->e:I

    iput-object p7, p0, Lcom/tencent/mna/base/f/e$1;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/base/f/e$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    iget-object v0, p0, Lcom/tencent/mna/base/f/e$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mna/base/f/e$1;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mna/base/f/e$1;->d:J

    iget v5, p0, Lcom/tencent/mna/base/f/e$1;->e:I

    iget-object v6, p0, Lcom/tencent/mna/base/f/e$1;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/tencent/mna/base/f/e;->b(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method
