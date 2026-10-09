.class Lcom/tencent/msdk/realnameauth/ImageDialog$1;
.super Ljava/lang/Object;
.source "ImageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/realnameauth/ImageDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/realnameauth/ImageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/realnameauth/ImageDialog;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$1;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$1;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/realnameauth/ImageDialog;->access$000(Lcom/tencent/msdk/realnameauth/ImageDialog;ILjava/lang/String;)V

    .line 186
    return-void
.end method
