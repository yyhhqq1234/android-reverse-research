.class Lcom/tencent/friday/uikit/d/d/a/c$1;
.super Ljava/lang/Object;
.source "JMarkerInfowindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/friday/uikit/d/d/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/friday/uikit/d/d/a/c;


# direct methods
.method constructor <init>(Lcom/tencent/friday/uikit/d/d/a/c;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/a/c$1;->a:Lcom/tencent/friday/uikit/d/d/a/c;

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
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "infowindow click:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/d/a;->a(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/tencent/friday/uikit/c/b;->b()Lcom/tencent/friday/uikit/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/a/c$1;->a:Lcom/tencent/friday/uikit/d/d/a/c;

    invoke-static {v1}, Lcom/tencent/friday/uikit/d/d/a/c;->a(Lcom/tencent/friday/uikit/d/d/a/c;)Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/a/c$1;->a:Lcom/tencent/friday/uikit/d/d/a/c;

    invoke-static {v2, p3}, Lcom/tencent/friday/uikit/d/d/a/c;->a(Lcom/tencent/friday/uikit/d/d/a/c;I)Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_Clicked;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/friday/uikit/c/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V

    .line 78
    return-void
.end method
