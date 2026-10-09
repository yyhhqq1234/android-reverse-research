.class Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;
.super Ljava/lang/Object;
.source "URLRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestTask"
.end annotation


# instance fields
.field private filepath:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;


# direct methods
.method public constructor <init>(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 173
    const/16 v19, 0x0

    .line 174
    .local v19, "outputStream":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 177
    .local v14, "inputStream":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$000(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "GET"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 178
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v10, "fd":Ljava/io/File;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 181
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v19    # "outputStream":Ljava/io/FileOutputStream;
    .local v20, "outputStream":Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .line 191
    .end local v10    # "fd":Ljava/io/File;
    .end local v20    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v19    # "outputStream":Ljava/io/FileOutputStream;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$000(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "POST"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 193
    :try_start_1
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v14    # "inputStream":Ljava/io/FileInputStream;
    .local v15, "inputStream":Ljava/io/FileInputStream;
    move-object v14, v15

    .line 204
    .end local v15    # "inputStream":Ljava/io/FileInputStream;
    .restart local v14    # "inputStream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)[B

    move-result-object v23

    if-eqz v23, :cond_3

    .line 206
    new-instance v18, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$200(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 207
    .local v18, "out":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$100(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)[B

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 208
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 209
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 244
    .end local v18    # "out":Ljava/io/OutputStream;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$200(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v12

    .line 245
    .local v12, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    if-nez v23, :cond_7

    .line 247
    :cond_2
    const-string v23, "ApolloVoice"

    const-string v24, "headerFields == null || headerFields.entrySet() == null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    invoke-virtual/range {v23 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    .line 349
    .end local v12    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_1
    return-void

    .line 182
    .restart local v10    # "fd":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 184
    .local v6, "e":Ljava/io/IOException;
    const-string v23, "ApolloVoice"

    const-string v24, "Get File With Create File Error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    goto :goto_1

    .line 194
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "fd":Ljava/io/File;
    :catch_1
    move-exception v6

    .line 196
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string v23, "ApolloVoice"

    const-string v24, "Post File With Open File Error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    const/16 v24, 0xa

    invoke-virtual/range {v23 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    goto :goto_1

    .line 210
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$000(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "POST"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5

    if-eqz v14, :cond_5

    .line 211
    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v4, v0, [B

    .line 214
    .local v4, "buf":[B
    new-instance v18, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$200(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 215
    .restart local v18    # "out":Ljava/io/OutputStream;
    :goto_2
    invoke-virtual {v14, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    .local v17, "len":I
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 216
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 217
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    .line 229
    .end local v4    # "buf":[B
    .end local v17    # "len":I
    .end local v18    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v6

    .line 230
    .local v6, "e":Ljava/net/UnknownHostException;
    const-string v23, "ApolloVoice"

    const-string v24, "UnknownHost"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    goto/16 :goto_1

    .line 219
    .end local v6    # "e":Ljava/net/UnknownHostException;
    .restart local v4    # "buf":[B
    .restart local v17    # "len":I
    .restart local v18    # "out":Ljava/io/OutputStream;
    :cond_4
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 233
    .end local v4    # "buf":[B
    .end local v17    # "len":I
    .end local v18    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v6

    .line 234
    .local v6, "e":Ljava/net/SocketTimeoutException;
    const-string v23, "ApolloVoice"

    const-string v24, "SocketTimeoutException"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    goto/16 :goto_1

    .line 221
    .end local v6    # "e":Ljava/net/SocketTimeoutException;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$200(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v23

    if-nez v23, :cond_6

    .line 222
    const-string v23, "ApolloVice"

    const-string/jumbo v24, "urlConn is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 237
    :catch_4
    move-exception v6

    .line 239
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    goto/16 :goto_1

    .line 225
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$200(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 251
    .restart local v12    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_7
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 252
    .local v8, "entries":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 253
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 254
    .local v9, "entry":Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 255
    .local v16, "key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    .line 256
    .local v22, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, ""

    .line 257
    .local v11, "header":Ljava/lang/String;
    if-eqz v22, :cond_8

    .line 258
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 259
    .local v21, "v":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 260
    goto :goto_4

    .line 262
    .end local v21    # "v":Ljava/lang/String;
    :cond_8
    if-nez v16, :cond_9

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v23

    const-string v24, "\\ "

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->version:Ljava/lang/String;

    goto :goto_3

    .line 265
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->headers:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 270
    .end local v9    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "header":Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    .end local v22    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$200(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->status:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 277
    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$200(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 285
    :goto_6
    :try_start_9
    new-instance v13, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$200(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 308
    .local v13, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 309
    .local v5, "byteArrayOut":Ljava/io/ByteArrayOutputStream;
    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v4, v0, [B

    .line 312
    .restart local v4    # "buf":[B
    :cond_b
    :goto_7
    :try_start_a
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .restart local v17    # "len":I
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 313
    if-nez v19, :cond_d

    .line 315
    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v5, v4, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_7

    .line 322
    .end local v17    # "len":I
    :catch_5
    move-exception v6

    .line 324
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    invoke-virtual/range {v23 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    goto/16 :goto_1

    .line 271
    .end local v4    # "buf":[B
    .end local v5    # "byteArrayOut":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v7

    .line 273
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->status:I

    goto :goto_5

    .line 278
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_7
    move-exception v7

    .line 280
    .restart local v7    # "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v23

    const-string v24, "No Status Message!"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    goto :goto_6

    .line 286
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_8
    move-exception v6

    .line 287
    .local v6, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->status:I

    move/from16 v23, v0

    const/16 v24, 0x194

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 288
    const-string v3, "404"

    .line 289
    .local v3, "Four":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v23

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->body:[B

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    goto/16 :goto_1

    .line 293
    .end local v3    # "Four":Ljava/lang/String;
    :cond_c
    const-string v23, "ApolloVoice"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "response status = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->status:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v23, "ApolloVoice"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$200(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    goto/16 :goto_1

    .line 299
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v7

    .line 302
    .restart local v7    # "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    goto/16 :goto_1

    .line 317
    .end local v7    # "e1":Ljava/io/IOException;
    .restart local v4    # "buf":[B
    .restart local v5    # "byteArrayOut":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "in":Ljava/io/InputStream;
    .restart local v17    # "len":I
    :cond_d
    if-eqz v19, :cond_b

    .line 318
    const/16 v23, 0x0

    :try_start_b
    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_7

    .line 329
    :cond_e
    :try_start_c
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 330
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v23

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->body:[B

    .line 336
    const-string v23, "ApolloVoice"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Java body size is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->body:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->filepath:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->access$000(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "GET"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 338
    if-eqz v19, :cond_f

    .line 340
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->flush()V

    .line 341
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 348
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response2cpp(I)V

    goto/16 :goto_1

    .line 331
    :catch_a
    move-exception v6

    .line 332
    .local v6, "e":Ljava/io/IOException;
    const-string v23, "ApolloVoice"

    const-string v24, "ByteArrayOutputStream Exception"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 342
    .end local v6    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v6

    .line 344
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method
