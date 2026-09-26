.class Lcom/netease/pharos/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/MainActivity;

.field private final synthetic val$projrctEt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/netease/pharos/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    iput-object p2, p0, Lcom/netease/pharos/MainActivity$10;->val$projrctEt:Landroid/widget/EditText;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 442
    iget-object v3, p0, Lcom/netease/pharos/MainActivity$10;->val$projrctEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "param":Ljava/lang/String;
    const-string v3, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "input projectId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 445
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "params":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-le v3, v7, :cond_0

    .line 447
    iget-object v3, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Lcom/netease/pharos/MainActivity;->access$2(Lcom/netease/pharos/MainActivity;Ljava/lang/String;)V

    .line 448
    iget-object v3, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    invoke-static {v3, v6}, Lcom/netease/pharos/MainActivity;->access$3(Lcom/netease/pharos/MainActivity;I)V

    .line 450
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/netease/pharos/MainActivity;->access$3(Lcom/netease/pharos/MainActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    iget-object v3, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Lcom/netease/pharos/MainActivity;->access$4(Lcom/netease/pharos/MainActivity;Ljava/lang/String;)V

    .line 456
    iget-object v3, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Lcom/netease/pharos/MainActivity;->access$5(Lcom/netease/pharos/MainActivity;Ljava/lang/String;)V

    .line 457
    iget-object v3, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Lcom/netease/pharos/MainActivity;->access$6(Lcom/netease/pharos/MainActivity;Ljava/lang/String;)V

    .line 460
    :try_start_1
    iget-object v3, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/netease/pharos/MainActivity;->access$7(Lcom/netease/pharos/MainActivity;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 468
    .end local v2    # "params":[Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    invoke-static {v3}, Lcom/netease/pharos/MainActivity;->access$8(Lcom/netease/pharos/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mProject="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    invoke-static {v5}, Lcom/netease/pharos/MainActivity;->access$9(Lcom/netease/pharos/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOption="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    invoke-static {v5}, Lcom/netease/pharos/MainActivity;->access$10(Lcom/netease/pharos/MainActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    invoke-static {v5}, Lcom/netease/pharos/MainActivity;->access$11(Lcom/netease/pharos/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    invoke-static {v5}, Lcom/netease/pharos/MainActivity;->access$12(Lcom/netease/pharos/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    invoke-static {v5}, Lcom/netease/pharos/MainActivity;->access$13(Lcom/netease/pharos/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDecision="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/pharos/MainActivity$10;->this$0:Lcom/netease/pharos/MainActivity;

    invoke-static {v5}, Lcom/netease/pharos/MainActivity;->access$14(Lcom/netease/pharos/MainActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    return-void

    .line 451
    .restart local v2    # "params":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set_param_btn Exception1="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 462
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set_param_btn Exception2="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
