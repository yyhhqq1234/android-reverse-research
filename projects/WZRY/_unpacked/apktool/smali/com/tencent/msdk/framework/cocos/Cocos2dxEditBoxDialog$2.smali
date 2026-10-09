.class Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog$2;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog$2;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 275
    if-nez p2, :cond_0

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog$2;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;

    invoke-static {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;->access$000(Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->setEditTextDialogResult(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog$2;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;

    invoke-static {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;->access$200(Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;)V

    .line 278
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog$2;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;->dismiss()V

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
