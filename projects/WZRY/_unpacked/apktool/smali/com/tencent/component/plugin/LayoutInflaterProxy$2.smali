.class Lcom/tencent/component/plugin/LayoutInflaterProxy$2;
.super Ljava/lang/Object;
.source "LayoutInflaterProxy.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/LayoutInflaterProxy;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/LayoutInflaterProxy;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/LayoutInflaterProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/LayoutInflaterProxy;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tencent/component/plugin/LayoutInflaterProxy$2;->this$0:Lcom/tencent/component/plugin/LayoutInflaterProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/component/plugin/LayoutInflaterProxy$2;->this$0:Lcom/tencent/component/plugin/LayoutInflaterProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/component/plugin/LayoutInflaterProxy;->access$000(Lcom/tencent/component/plugin/LayoutInflaterProxy;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
