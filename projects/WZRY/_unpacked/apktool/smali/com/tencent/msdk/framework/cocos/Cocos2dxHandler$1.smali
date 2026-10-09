.class Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$1;
.super Ljava/lang/Object;
.source "Cocos2dxHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;->showDialog(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$1;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    return-void
.end method
