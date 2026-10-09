.class Lcom/tencent/liteav/videoencoder/b$1;
.super Ljava/lang/Object;
.source "TXCVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videoencoder/b;->a()Ljavax/microedition/khronos/egl/EGLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lcom/tencent/liteav/videoencoder/b;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoencoder/b;[Z)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b$1;->b:Lcom/tencent/liteav/videoencoder/b;

    iput-object p2, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 122
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b$1;->b:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v3, v3, v3, v0, v0}, Lcom/tencent/liteav/basic/d/b;->a(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/liteav/basic/d/b;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;Lcom/tencent/liteav/basic/d/b;)Lcom/tencent/liteav/basic/d/b;

    .line 123
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b$1;->a:[Z

    iget-object v3, p0, Lcom/tencent/liteav/videoencoder/b$1;->b:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v3}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/basic/d/b;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    aput-boolean v0, v2, v1

    .line 124
    return-void

    :cond_0
    move v0, v1

    .line 123
    goto :goto_0
.end method
