.class Lcom/tencent/friday/uikit/c/b$1;
.super Ljava/lang/Object;
.source "MsgCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/friday/uikit/c/b;->a([B[B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:[B

.field final synthetic c:Lcom/tencent/friday/uikit/c/b;


# direct methods
.method constructor <init>(Lcom/tencent/friday/uikit/c/b;[B[B)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/friday/uikit/c/b$1;->c:Lcom/tencent/friday/uikit/c/b;

    iput-object p2, p0, Lcom/tencent/friday/uikit/c/b$1;->a:[B

    iput-object p3, p0, Lcom/tencent/friday/uikit/c/b$1;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/b$1;->c:Lcom/tencent/friday/uikit/c/b;

    invoke-static {v0}, Lcom/tencent/friday/uikit/c/b;->a(Lcom/tencent/friday/uikit/c/b;)Lcom/tencent/friday/uikit/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/friday/uikit/c/b$1;->a:[B

    iget-object v2, p0, Lcom/tencent/friday/uikit/c/b$1;->b:[B

    invoke-virtual {v0, v1, v2}, Lcom/tencent/friday/uikit/c/c;->a([B[B)[B

    .line 64
    return-void
.end method
