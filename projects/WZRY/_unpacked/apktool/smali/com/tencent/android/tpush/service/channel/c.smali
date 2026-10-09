.class Lcom/tencent/android/tpush/service/channel/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/horse/k;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/channel/b;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/channel/b;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 166
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICreateSocketChannelCallback onFailure("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/tencent/android/tpush/service/channel/b;Z)Z

    .line 175
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    const-string v0, "TpnsChannel"

    const-string v2, "Connect to Xinge Server failed!"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    invoke-direct {v2, p1, p2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/s;

    .line 181
    iget-object v4, v0, Lcom/tencent/android/tpush/service/channel/s;->d:Lcom/tencent/android/tpush/service/channel/t;

    if-eqz v4, :cond_0

    .line 182
    iget-object v4, v0, Lcom/tencent/android/tpush/service/channel/s;->d:Lcom/tencent/android/tpush/service/channel/t;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/s;->c:Lcom/qq/taf/jce/JceStruct;

    invoke-static {}, Lcom/tencent/android/tpush/service/channel/a;->a()Lcom/tencent/android/tpush/service/channel/a;

    move-result-object v5

    invoke-interface {v4, v0, v2, v5}, Lcom/tencent/android/tpush/service/channel/t;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 186
    :cond_0
    :try_start_1
    const-string v4, "TpnsChannel"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/s;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    .line 192
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    .line 196
    :try_start_2
    sget-object v0, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    if-nez v0, :cond_3

    .line 197
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    .line 200
    :cond_3
    sget-object v0, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_5

    .line 202
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 203
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 205
    const-string v1, "np"

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/e/h;->g(Landroid/content/Context;)B

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    :cond_4
    sget-object v1, Lcom/tencent/android/tpush/service/channel/b;->g:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    :cond_5
    :goto_1
    return-void

    .line 211
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/nio/channels/SocketChannel;Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    .locals 6

    .prologue
    .line 219
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICreateSocketChannelCallback onSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->e:I

    .line 222
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/tencent/android/tpush/service/channel/b;Z)Z

    .line 224
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->g(Landroid/content/Context;)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 244
    :goto_0
    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    .line 247
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/android/tpush/service/channel/a/d;

    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v3

    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v5

    invoke-direct {v0, p1, v3, v4, v5}, Lcom/tencent/android/tpush/service/channel/a/d;-><init>(Ljava/nio/channels/SocketChannel;Lcom/tencent/android/tpush/service/channel/a/b;Ljava/lang/String;I)V

    :goto_1
    invoke-static {v2, v0}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;)Lcom/tencent/android/tpush/service/channel/a/a;

    .line 256
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->a(Z)V

    .line 257
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->b(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->start()V

    .line 259
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 260
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/b;->b(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/a/a;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->b(Lcom/tencent/android/tpush/service/channel/b;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    return-void

    .line 230
    :pswitch_0
    :try_start_3
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->l:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->n:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    :try_start_4
    const-string v2, "XGService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 233
    :pswitch_1
    :try_start_5
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->k:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->n:I

    goto :goto_0

    .line 236
    :pswitch_2
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->k:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->n:I

    goto :goto_0

    .line 239
    :pswitch_3
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->k:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->n:I

    goto :goto_0

    .line 247
    :cond_1
    new-instance v0, Lcom/tencent/android/tpush/service/channel/a/c;

    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/tencent/android/tpush/service/channel/a/c;-><init>(Ljava/nio/channels/SocketChannel;Lcom/tencent/android/tpush/service/channel/a/b;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/tencent/android/tpush/service/channel/a/a;-><init>(Ljava/nio/channels/SocketChannel;Lcom/tencent/android/tpush/service/channel/a/b;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
