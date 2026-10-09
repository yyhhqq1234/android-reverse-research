.class final Lcom/tencent/kgvmp/e/c;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/tencent/kgvmp/a/d;->SCENE:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/a;->SCENEID:Lcom/tencent/kgvmp/a/a;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/a;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->FPS:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/a;->FPS:Lcom/tencent/kgvmp/a/a;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/a;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->THREAD_TID:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/a;->THREADTID:Lcom/tencent/kgvmp/a/a;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/a;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/e/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
