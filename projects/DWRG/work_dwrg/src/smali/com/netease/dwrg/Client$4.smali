.class Lcom/netease/dwrg/Client$4;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Client;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Client;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Client;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/netease/dwrg/Client$4;->this$0:Lcom/netease/dwrg/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v12, -0x1

    .line 494
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "top -m 3 -n 1 -s cpu"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 495
    .local v8, "process":Ljava/lang/Process;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 497
    .local v9, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "line":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    .line 500
    const-string v10, "CPU%"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 508
    :cond_0
    const-string v10, "\\s+"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, "infoArray":[Ljava/lang/String;
    const/4 v0, -0x1

    .line 510
    .local v0, "cpuIndex":I
    const/4 v6, -0x1

    .line 511
    .local v6, "memIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v4

    if-ge v3, v10, :cond_2

    .line 513
    aget-object v10, v4, v3

    const-string v11, "CPU%"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 515
    move v0, v3

    .line 521
    :cond_1
    :goto_2
    if-eq v0, v12, :cond_8

    if-eq v6, v12, :cond_8

    .line 527
    :cond_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 528
    :goto_3
    if-eqz v5, :cond_9

    .line 530
    const-string v10, "com.netease.dwrg"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 533
    const-string v10, "\\s+"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 535
    const-string v1, "None"

    .line 536
    .local v1, "cpuUsage":Ljava/lang/String;
    const-string v7, "None"

    .line 537
    .local v7, "memUsage":Ljava/lang/String;
    if-eq v0, v12, :cond_3

    .line 538
    aget-object v1, v4, v0

    .line 539
    :cond_3
    if-eq v6, v12, :cond_4

    .line 540
    aget-object v7, v4, v6

    .line 541
    :cond_4
    invoke-static {v1, v7}, Lcom/netease/neox/NativeInterface;->NativeUpdateProfileInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .end local v1    # "cpuUsage":Ljava/lang/String;
    .end local v7    # "memUsage":Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 504
    .end local v0    # "cpuIndex":I
    .end local v3    # "i":I
    .end local v4    # "infoArray":[Ljava/lang/String;
    .end local v6    # "memIndex":I
    :cond_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 516
    .restart local v0    # "cpuIndex":I
    .restart local v3    # "i":I
    .restart local v4    # "infoArray":[Ljava/lang/String;
    .restart local v6    # "memIndex":I
    :cond_7
    aget-object v10, v4, v3

    const-string v11, "RSS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_1

    .line 518
    move v6, v3

    goto :goto_2

    .line 511
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 545
    .end local v0    # "cpuIndex":I
    .end local v3    # "i":I
    .end local v4    # "infoArray":[Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "memIndex":I
    .end local v8    # "process":Ljava/lang/Process;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 547
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 549
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_9
    iget-object v10, p0, Lcom/netease/dwrg/Client$4;->this$0:Lcom/netease/dwrg/Client;

    iget-object v10, v10, Lcom/netease/dwrg/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, p0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 550
    return-void
.end method
