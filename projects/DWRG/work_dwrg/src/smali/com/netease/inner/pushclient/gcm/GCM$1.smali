.class Lcom/netease/inner/pushclient/gcm/GCM$1;
.super Landroid/os/AsyncTask;
.source "GCM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/inner/pushclient/gcm/GCM;->registerInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/inner/pushclient/gcm/GCM;


# direct methods
.method constructor <init>(Lcom/netease/inner/pushclient/gcm/GCM;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    .line 123
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/inner/pushclient/gcm/GCM$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 125
    const-string v3, ""

    .line 126
    .local v3, "msg":Ljava/lang/String;
    iget-object v6, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    iget-object v6, v6, Lcom/netease/inner/pushclient/gcm/GCM;->m_gcm:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 128
    :try_start_0
    const-string v6, "com.google.android.gms.gcm.GoogleCloudMessaging"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getInstance"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 130
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    invoke-static {v10}, Lcom/netease/inner/pushclient/gcm/GCM;->access$0(Lcom/netease/inner/pushclient/gcm/GCM;)Landroid/content/Context;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Lcom/netease/inner/pushclient/gcm/GCM;->m_gcm:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    iget-object v6, v6, Lcom/netease/inner/pushclient/gcm/GCM;->m_gcm:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "register"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, [Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 140
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    iget-object v6, v6, Lcom/netease/inner/pushclient/gcm/GCM;->m_gcm:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    iget-object v11, v11, Lcom/netease/inner/pushclient/gcm/GCM;->m_senderID:Ljava/lang/String;

    aput-object v11, v9, v10

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 141
    .local v5, "regid":Ljava/lang/Object;
    iget-object v6, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "regid":Ljava/lang/Object;
    iput-object v5, v6, Lcom/netease/inner/pushclient/gcm/GCM;->m_regid:Ljava/lang/String;

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Device registered, regid="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    iget-object v7, v7, Lcom/netease/inner/pushclient/gcm/GCM;->m_regid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-static {}, Lcom/netease/inner/pushclient/gcm/GCM;->access$1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    iget-object v6, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    invoke-static {v6}, Lcom/netease/inner/pushclient/gcm/GCM;->access$2(Lcom/netease/inner/pushclient/gcm/GCM;)V

    move-object v4, v3

    .line 152
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "msg":Ljava/lang/String;
    .local v4, "msg":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 132
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/netease/inner/pushclient/gcm/GCM;->access$1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GoogleCloudMessaging.getInstance error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v3

    .line 135
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 146
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/netease/inner/pushclient/gcm/GCM;->access$1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "register error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v3

    .line 148
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/inner/pushclient/gcm/GCM$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    iget-object v0, v0, Lcom/netease/inner/pushclient/gcm/GCM;->m_regid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    iget-object v1, p0, Lcom/netease/inner/pushclient/gcm/GCM$1;->this$0:Lcom/netease/inner/pushclient/gcm/GCM;

    iget-object v1, v1, Lcom/netease/inner/pushclient/gcm/GCM;->m_regid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/inner/pushclient/gcm/GCM;->access$3(Lcom/netease/inner/pushclient/gcm/GCM;Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method
