.class Lcom/tencent/component/debug/FileTracerConfig$2;
.super Ljava/lang/Object;
.source "FileTracerConfig.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/debug/FileTracerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/debug/FileTracerConfig;


# direct methods
.method constructor <init>(Lcom/tencent/component/debug/FileTracerConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/debug/FileTracerConfig;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/tencent/component/debug/FileTracerConfig$2;->this$0:Lcom/tencent/component/debug/FileTracerConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 5
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/component/debug/FileTracerConfig$2;->this$0:Lcom/tencent/component/debug/FileTracerConfig;

    invoke-virtual {v3}, Lcom/tencent/component/debug/FileTracerConfig;->getFileExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 142
    .local v0, "conditionA":Z
    if-nez v0, :cond_0

    .line 150
    :goto_0
    return v1

    .line 148
    :cond_0
    invoke-static {p1}, Lcom/tencent/component/debug/FileTracerConfig;->access$000(Ljava/io/File;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 150
    .local v1, "conditionB":Z
    :cond_1
    goto :goto_0
.end method
