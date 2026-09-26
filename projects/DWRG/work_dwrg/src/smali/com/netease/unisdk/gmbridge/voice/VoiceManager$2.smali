.class Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->playback(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 145
    :try_start_0
    const-string v8, "gm_bridge VoiceManager"

    const-string v9, "download voice"

    invoke-static {v8, v9}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v9, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 147
    .local v6, "request":Lokhttp3/Request;
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 148
    .local v1, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v1, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    .line 149
    .local v7, "response":Lokhttp3/Response;
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    .line 150
    .local v3, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->val$file:Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 151
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 153
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_0

    .line 154
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v0    # "buf":[B
    .end local v1    # "client":Lokhttp3/OkHttpClient;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "request":Lokhttp3/Request;
    .end local v7    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "gm_bridge VoiceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "download voice error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v8, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$2;

    invoke-direct {v8, p0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$2;-><init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;)V

    invoke-static {v8}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 156
    .restart local v0    # "buf":[B
    .restart local v1    # "client":Lokhttp3/OkHttpClient;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "request":Lokhttp3/Request;
    .restart local v7    # "response":Lokhttp3/Response;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 157
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 158
    new-instance v8, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$1;

    invoke-direct {v8, p0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$1;-><init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;)V

    invoke-static {v8}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
