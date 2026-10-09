.class Lcom/tencent/friday/uikit/d/b/a$1;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/friday/uikit/d/b/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/friday/uikit/d/b/a;


# direct methods
.method constructor <init>(Lcom/tencent/friday/uikit/d/b/a;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/b/a$1;->a:Lcom/tencent/friday/uikit/d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 58
    const-string v0, "js"

    const-string v1, "click event happend"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
