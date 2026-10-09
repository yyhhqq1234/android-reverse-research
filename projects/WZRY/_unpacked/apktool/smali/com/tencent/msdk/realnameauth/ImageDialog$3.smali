.class Lcom/tencent/msdk/realnameauth/ImageDialog$3;
.super Landroid/os/Handler;
.source "ImageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/realnameauth/ImageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/realnameauth/ImageDialog;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/realnameauth/ImageDialog;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$3;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 274
    if-nez p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 278
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 279
    .local v1, "flag":I
    const-string v0, ""

    .line 280
    .local v0, "desc":Ljava/lang/String;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 281
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "desc":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 283
    .restart local v0    # "desc":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$3;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/ImageDialog;->access$400(Lcom/tencent/msdk/realnameauth/ImageDialog;)Lcom/tencent/msdk/realnameauth/ImageDialog$EventCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 284
    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$3;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/ImageDialog;->access$400(Lcom/tencent/msdk/realnameauth/ImageDialog;)Lcom/tencent/msdk/realnameauth/ImageDialog$EventCallback;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/tencent/msdk/realnameauth/ImageDialog$EventCallback;->callback(ILjava/lang/String;)V

    .line 286
    :cond_3
    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$3;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/ImageDialog;->access$500(Lcom/tencent/msdk/realnameauth/ImageDialog;)V

    goto :goto_0

    .line 287
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "flag":I
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 288
    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$3;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/ImageDialog;->access$600(Lcom/tencent/msdk/realnameauth/ImageDialog;)V

    goto :goto_0

    .line 289
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 290
    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$3;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/ImageDialog;->access$500(Lcom/tencent/msdk/realnameauth/ImageDialog;)V

    goto :goto_0
.end method
