.class Lcom/tencent/tga/livesdk/TGAPluginManager$6;
.super Ljava/lang/Object;
.source "TGAPluginManager.java"

# interfaces
.implements Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tga/livesdk/TGAPluginManager;->reqUpdate(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

.field final synthetic val$updateParam:Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;


# direct methods
.method constructor <init>(Lcom/tencent/tga/livesdk/TGAPluginManager;Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iput-object p2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->val$updateParam:Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 905
    const-string v0, "TGAPluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u5931\u8d25 reqUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v0}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2600(Lcom/tencent/tga/livesdk/TGAPluginManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v0}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2800(Lcom/tencent/tga/livesdk/TGAPluginManager;)V

    .line 912
    :cond_0
    return-void
.end method

.method public onSuc(I)V
    .locals 7
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 847
    :try_start_0
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u8bf7\u6c42\u6210\u529f reqUpdate Data  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->val$updateParam:Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;

    iget-object v1, v4, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    .line 850
    .local v1, "response":Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->result:I

    if-eqz v4, :cond_1

    .line 851
    :cond_0
    const-string v2, "TGAPluginManager"

    const-string v3, "request parameter is wrong, please check"

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    .end local v1    # "response":Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;
    :goto_0
    return-void

    .line 857
    .restart local v1    # "response":Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;
    :cond_1
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iget v5, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->chat_cd:I

    invoke-static {v4, v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1702(Lcom/tencent/tga/livesdk/TGAPluginManager;I)I

    .line 859
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iget-object v5, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->tv_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1802(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;

    .line 860
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iget-object v5, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->match_guess_url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1602(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;

    .line 862
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iget-object v5, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->configInfo:[B

    invoke-static {v4, v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1902(Lcom/tencent/tga/livesdk/TGAPluginManager;[B)[B

    .line 865
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " matchGuessUrl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v6}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1600(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iget v5, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->next_sync_time:I

    invoke-static {v4, v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2002(Lcom/tencent/tga/livesdk/TGAPluginManager;I)I

    .line 869
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iget-object v5, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->pop_bk:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2102(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;

    .line 871
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iget v5, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->popup_cd:I

    invoke-static {v4, v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2202(Lcom/tencent/tga/livesdk/TGAPluginManager;I)I

    .line 872
    iget v4, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->tv_switch:I

    if-ne v4, v3, :cond_6

    move v0, v3

    .line 873
    .local v0, "pluginAvail":Z
    :goto_1
    iget-object v5, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iget v4, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->popup_window_entry:I

    if-ne v4, v3, :cond_7

    move v4, v3

    :goto_2
    invoke-static {v5, v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2302(Lcom/tencent/tga/livesdk/TGAPluginManager;Z)Z

    .line 874
    iget-object v5, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iget v4, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->wsq_void_switch:I

    if-ne v4, v3, :cond_8

    move v4, v3

    :goto_3
    invoke-static {v5, v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2402(Lcom/tencent/tga/livesdk/TGAPluginManager;Z)Z

    .line 878
    sget-boolean v4, Lcom/loopj/android/tgahttp/Configs/Configs;->isP2P:Z

    if-nez v4, :cond_2

    iget v4, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->p2p_switch:I

    if-ne v4, v3, :cond_9

    :cond_2
    move v4, v3

    :goto_4
    sput-boolean v4, Lcom/loopj/android/tgahttp/Configs/Configs;->isP2P:Z

    .line 879
    sget-boolean v4, Lcom/loopj/android/tgahttp/Configs/Configs;->isOnline:Z

    if-nez v4, :cond_3

    iget v4, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->prevent_offline_switch:I

    if-ne v4, v3, :cond_a

    :cond_3
    move v4, v3

    :goto_5
    sput-boolean v4, Lcom/loopj/android/tgahttp/Configs/Configs;->isOnline:Z

    .line 881
    sget-boolean v4, Lcom/loopj/android/tgahttp/Configs/Configs;->isUseNewNet:Z

    if-nez v4, :cond_4

    iget v4, v1, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->network_lib_switch:I

    if-ne v4, v3, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    sput-boolean v2, Lcom/loopj/android/tgahttp/Configs/Configs;->isUseNewNet:Z

    .line 882
    const-string v2, "TGAPluginManager"

    const-string v3, "pluginAvail= %b isPopTvOpen = %b isp2p = %b isOnline = %b"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v6}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2300(Lcom/tencent/tga/livesdk/TGAPluginManager;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-boolean v6, Lcom/loopj/android/tgahttp/Configs/Configs;->isP2P:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-boolean v6, Lcom/loopj/android/tgahttp/Configs/Configs;->isOnline:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    if-eqz v0, :cond_b

    .line 884
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v2}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2500(Lcom/tencent/tga/livesdk/TGAPluginManager;)V

    .line 885
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2602(Lcom/tencent/tga/livesdk/TGAPluginManager;Z)Z

    .line 886
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$100(Lcom/tencent/tga/livesdk/TGAPluginManager;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->getNewApkFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2702(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;

    .line 896
    :goto_6
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v2}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2800(Lcom/tencent/tga/livesdk/TGAPluginManager;)V

    goto/16 :goto_0

    .line 898
    .end local v0    # "pluginAvail":Z
    .end local v1    # "response":Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .restart local v1    # "response":Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;
    :cond_6
    move v0, v2

    .line 872
    goto/16 :goto_1

    .restart local v0    # "pluginAvail":Z
    :cond_7
    move v4, v2

    .line 873
    goto/16 :goto_2

    :cond_8
    move v4, v2

    .line 874
    goto/16 :goto_3

    :cond_9
    move v4, v2

    .line 878
    goto :goto_4

    :cond_a
    move v4, v2

    .line 879
    goto :goto_5

    .line 889
    :cond_b
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2602(Lcom/tencent/tga/livesdk/TGAPluginManager;Z)Z

    .line 890
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$6;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2702(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6
.end method
