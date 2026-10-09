.class Lcom/tencent/component/debug/FileTracer$1;
.super Ljava/lang/Object;
.source "FileTracer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/debug/FileTracer;-><init>(IZLcom/tencent/component/debug/TraceFormat;Lcom/tencent/component/debug/FileTracerConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/debug/FileTracer;


# direct methods
.method constructor <init>(Lcom/tencent/component/debug/FileTracer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/debug/FileTracer;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tencent/component/debug/FileTracer$1;->this$0:Lcom/tencent/component/debug/FileTracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer$1;->this$0:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v0}, Lcom/tencent/component/debug/FileTracer;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/component/debug/FileTracerConfig;->cleanWorkFolders()V

    .line 130
    return-void
.end method
