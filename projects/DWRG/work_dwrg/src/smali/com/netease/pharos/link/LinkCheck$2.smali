.class Lcom/netease/pharos/link/LinkCheck$2;
.super Ljava/lang/Object;
.source "LinkCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/link/LinkCheck;->printMessage(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/link/LinkCheck;

.field private final synthetic val$input:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/netease/pharos/link/LinkCheck;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/link/LinkCheck$2;->this$0:Lcom/netease/pharos/link/LinkCheck;

    iput-object p2, p0, Lcom/netease/pharos/link/LinkCheck$2;->val$input:Ljava/io/InputStream;

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 755
    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/netease/pharos/link/LinkCheck$2;->val$input:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 756
    .local v3, "reader":Ljava/io/Reader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 757
    .local v0, "bf":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 761
    .local v2, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 772
    :try_start_1
    iget-object v4, p0, Lcom/netease/pharos/link/LinkCheck$2;->val$input:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 777
    :goto_1
    return-void

    .line 762
    :cond_0
    :try_start_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 763
    const-string v4, "LinkCheck"

    invoke-static {v4, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 766
    :catch_0
    move-exception v1

    .line 767
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 772
    :try_start_4
    iget-object v4, p0, Lcom/netease/pharos/link/LinkCheck$2;->val$input:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 773
    :catch_1
    move-exception v1

    .line 774
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 769
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 772
    :try_start_5
    iget-object v5, p0, Lcom/netease/pharos/link/LinkCheck$2;->val$input:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 776
    :goto_2
    throw v4

    .line 773
    :catch_2
    move-exception v1

    .line 774
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 773
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 774
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
