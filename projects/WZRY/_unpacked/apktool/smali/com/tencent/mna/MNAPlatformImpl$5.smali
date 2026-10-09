.class final Lcom/tencent/mna/MNAPlatformImpl$5;
.super Ljava/lang/Object;
.source "MNAPlatformImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/MNAPlatformImpl;->MNASetGameDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 668
    iput p1, p0, Lcom/tencent/mna/MNAPlatformImpl$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 672
    :try_start_0
    iget v0, p0, Lcom/tencent/mna/MNAPlatformImpl$5;->a:I

    invoke-static {v0}, Lcom/tencent/mna/b/e/b;->a(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    goto :goto_0
.end method
