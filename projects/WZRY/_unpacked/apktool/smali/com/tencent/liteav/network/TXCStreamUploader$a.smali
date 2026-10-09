.class Lcom/tencent/liteav/network/TXCStreamUploader$a;
.super Ljava/lang/Object;
.source "TXCStreamUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/network/TXCStreamUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field final synthetic c:Lcom/tencent/liteav/network/TXCStreamUploader;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->c:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->a:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->b:Z

    .line 104
    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->a:Ljava/lang/String;

    .line 105
    iput-boolean p3, p0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->b:Z

    .line 106
    return-void
.end method
