.class Lcom/tencent/friday/uikit/d/d/b/b$1;
.super Ljava/lang/Object;
.source "JHorizontalTableView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/friday/uikit/d/d/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/friday/uikit/d/d/b/b;


# direct methods
.method constructor <init>(Lcom/tencent/friday/uikit/d/d/b/b;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/b/b$1;->a:Lcom/tencent/friday/uikit/d/d/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/d/a;->c(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/b$1;->a:Lcom/tencent/friday/uikit/d/d/b/b;

    invoke-static {v0}, Lcom/tencent/friday/uikit/d/d/b/b;->a(Lcom/tencent/friday/uikit/d/d/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/b$1;->a:Lcom/tencent/friday/uikit/d/d/b/b;

    invoke-static {v0}, Lcom/tencent/friday/uikit/d/d/b/b;->b(Lcom/tencent/friday/uikit/d/d/b/b;)Lcom/tencent/friday/uikit/d/d/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/b$1;->a:Lcom/tencent/friday/uikit/d/d/b/b;

    invoke-static {v0}, Lcom/tencent/friday/uikit/d/d/b/b;->b(Lcom/tencent/friday/uikit/d/d/b/b;)Lcom/tencent/friday/uikit/d/d/b/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/friday/uikit/d/d/b/d;->a(I)V

    .line 243
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/b$1;->a:Lcom/tencent/friday/uikit/d/d/b/b;

    invoke-static {v0}, Lcom/tencent/friday/uikit/d/d/b/b;->b(Lcom/tencent/friday/uikit/d/d/b/b;)Lcom/tencent/friday/uikit/d/d/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/d/b/d;->notifyDataSetChanged()V

    .line 245
    :cond_0
    invoke-static {}, Lcom/tencent/friday/uikit/c/b;->b()Lcom/tencent/friday/uikit/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/b/b$1;->a:Lcom/tencent/friday/uikit/d/d/b/b;

    invoke-static {v1}, Lcom/tencent/friday/uikit/d/d/b/b;->c(Lcom/tencent/friday/uikit/d/d/b/b;)Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/b/b$1;->a:Lcom/tencent/friday/uikit/d/d/b/b;

    invoke-static {v2, p3}, Lcom/tencent/friday/uikit/d/d/b/b;->a(Lcom/tencent/friday/uikit/d/d/b/b;I)Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCallbackData_Clicked;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/friday/uikit/c/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V

    .line 246
    return-void
.end method
