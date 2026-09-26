.class Lcom/netease/pharos/MainActivity$11$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/MainActivity$11;->onResult(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/pharos/MainActivity$11;

.field private final synthetic val$data:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/pharos/MainActivity$11;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/MainActivity$11$1;->this$1:Lcom/netease/pharos/MainActivity$11;

    iput-object p2, p0, Lcom/netease/pharos/MainActivity$11$1;->val$data:Lorg/json/JSONObject;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 503
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 505
    .local v0, "info":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/netease/pharos/MainActivity$11$1;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "infos":[Ljava/lang/String;
    const-string v3, "\u663e\u793a\u6700\u7ec8\u63d0\u4ea4\u7684\u65e5\u5fd7\u5185\u5bb9="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 509
    array-length v5, v1

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 513
    iget-object v3, p0, Lcom/netease/pharos/MainActivity$11$1;->this$1:Lcom/netease/pharos/MainActivity$11;

    invoke-static {v3}, Lcom/netease/pharos/MainActivity$11;->access$0(Lcom/netease/pharos/MainActivity$11;)Lcom/netease/pharos/MainActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/pharos/MainActivity;->access$8(Lcom/netease/pharos/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/pharos/MainActivity$11$1;->this$1:Lcom/netease/pharos/MainActivity$11;

    invoke-static {v6}, Lcom/netease/pharos/MainActivity$11;->access$0(Lcom/netease/pharos/MainActivity$11;)Lcom/netease/pharos/MainActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/pharos/MainActivity;->access$8(Lcom/netease/pharos/MainActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v3, p0, Lcom/netease/pharos/MainActivity$11$1;->this$1:Lcom/netease/pharos/MainActivity$11;

    invoke-static {v3}, Lcom/netease/pharos/MainActivity$11;->access$0(Lcom/netease/pharos/MainActivity$11;)Lcom/netease/pharos/MainActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/pharos/MainActivity;->access$15(Lcom/netease/pharos/MainActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 517
    return-void

    .line 509
    :cond_0
    aget-object v2, v1, v3

    .line 510
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 509
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
