.class final Lcom/tencent/mna/b$2;
.super Ljava/lang/Object;
.source "MnaSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 231
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b/g/d;->b()Lcom/tencent/mna/b/g/c;

    move-result-object v0

    .line 232
    iget v0, v0, Lcom/tencent/mna/b/g/c;->a:I

    if-nez v0, :cond_0

    .line 233
    const-string v0, "[N]\u8def\u7531Qos \u83b7\u53d6\u7248\u672c\u6210\u529f"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v0, "[N]\u8def\u7531Qos \u83b7\u53d6\u7248\u672c\u5931\u8d25"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    goto :goto_0
.end method
