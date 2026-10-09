.class Lcom/tencent/friday/uikit/a/f/a$2;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/friday/uikit/a/f/a;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/friday/uikit/a/f/a;


# direct methods
.method constructor <init>(Lcom/tencent/friday/uikit/a/f/a;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/tencent/friday/uikit/a/f/a$2;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$2;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/a/f/a;->requestLayout()V

    .line 209
    return-void
.end method
