.class final Lcom/tencent/kgvmp/e/d;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/tencent/kgvmp/a/d;->SCENE:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/c;->SCENEID:Lcom/tencent/kgvmp/a/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->FPS:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/c;->FPS:Lcom/tencent/kgvmp/a/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->ROLE_STATUS:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/c;->ROLESTATUS:Lcom/tencent/kgvmp/a/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->NET_LATENCY:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/c;->NETLATENCY:Lcom/tencent/kgvmp/a/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->SERVER_IP:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/c;->SERVERIP:Lcom/tencent/kgvmp/a/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->FPS_TARGET:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/c;->TARGETFPS:Lcom/tencent/kgvmp/a/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->HD_MODEL:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/c;->RESOLUTION:Lcom/tencent/kgvmp/a/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->MODEL_LEVEL:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/c;->PICQUALITY:Lcom/tencent/kgvmp/a/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->USERS_COUNT:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/c;->USERCOUNT:Lcom/tencent/kgvmp/a/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->THREAD_TID:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/c;->THREADTID:Lcom/tencent/kgvmp/a/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/c;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->MAIN_VERCODE:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->SUB_VERCODE:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->TIME_STAMP:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->FRAME_MISS:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->EFFECT_LEVEL:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->RECORDING:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->URGENT_SIGNAL:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/kgvmp/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
