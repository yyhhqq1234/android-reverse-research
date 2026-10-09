.class public Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;
.super Landroid/os/Handler;
.source "Cocos2dxHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;,
        Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$DialogMessage;
    }
.end annotation


# static fields
.field public static final HANDLER_SHOW_DIALOG:I = 0x1

.field public static final HANDLER_SHOW_EDITBOX_DIALOG:I = 0x2


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 69
    return-void
.end method

.method private showDialog(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 96
    .local v1, "theActivity":Landroid/app/Activity;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$DialogMessage;

    .line 97
    .local v0, "dialogMessage":Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$DialogMessage;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$DialogMessage;->titile:Ljava/lang/String;

    .line 98
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$DialogMessage;->message:Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$1;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$1;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;)V

    .line 100
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 109
    return-void
.end method

.method private showEditBoxDialog(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;

    .line 113
    .local v8, "editBoxMessage":Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;

    iget-object v1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, v8, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;->title:Ljava/lang/String;

    iget-object v3, v8, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;->content:Ljava/lang/String;

    iget v4, v8, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;->inputMode:I

    iget v5, v8, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;->inputFlag:I

    iget v6, v8, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;->returnType:I

    iget v7, v8, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;->maxLength:I

    invoke-direct/range {v0 .. v7}, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 119
    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditBoxDialog;->show()V

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 86
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;->showDialog(Landroid/os/Message;)V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;->showEditBoxDialog(Landroid/os/Message;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
