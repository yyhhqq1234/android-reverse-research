.class Lcom/netease/epay/sdk/base/util/fingerprint/Root$ExecShell;
.super Ljava/lang/Object;
.source "Root.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/util/fingerprint/Root;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExecShell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/util/fingerprint/Root;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/util/fingerprint/Root;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/util/fingerprint/Root;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/netease/epay/sdk/base/util/fingerprint/Root$ExecShell;->this$0:Lcom/netease/epay/sdk/base/util/fingerprint/Root;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCommand(Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "shellCmd"    # Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/epay/sdk/base/util/fingerprint/Root$SHELL_CMD;->command:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 41
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 42
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 49
    :cond_0
    :goto_1
    return-object v0

    .line 38
    :catch_1
    move-exception v0

    .line 39
    const/4 v0, 0x0

    goto :goto_1
.end method
