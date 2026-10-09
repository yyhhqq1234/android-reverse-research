.class Lcom/tencent/kgvmp/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;


# instance fields
.field final synthetic a:Lcom/tencent/kgvmp/d/b;


# direct methods
.method constructor <init>(Lcom/tencent/kgvmp/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/d/c;->a:Lcom/tencent/kgvmp/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhoneInfo(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/tencent/kgvmp/d/b;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "huawei:callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/d/c;->a:Lcom/tencent/kgvmp/d/b;

    invoke-static {v0, p1}, Lcom/tencent/kgvmp/d/b;->a(Lcom/tencent/kgvmp/d/b;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    invoke-static {}, Lcom/tencent/kgvmp/d/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei:callback: get level -1."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/kgvmp/d/c;->a:Lcom/tencent/kgvmp/d/b;

    invoke-static {v1, v0}, Lcom/tencent/kgvmp/d/b;->a(Lcom/tencent/kgvmp/d/b;I)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/kgvmp/d/c;->a:Lcom/tencent/kgvmp/d/b;

    invoke-static {v2}, Lcom/tencent/kgvmp/d/b;->a(Lcom/tencent/kgvmp/d/b;)I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-static {}, Lcom/tencent/kgvmp/d/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei:callback: same to last level."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/kgvmp/d/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei:callback: exception."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/kgvmp/report/e;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/tencent/kgvmp/a/e;->VENDOR_LEVEL:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v3}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/g;->FREQUENCY_SIGNAL:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    const-string v3, "2"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/g;->FREQUENCY_LEVEL:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/tencent/kgvmp/report/j;->e(Ljava/util/HashMap;)V

    :cond_3
    invoke-static {}, Lcom/tencent/kgvmp/report/e;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/kgvmp/d/c;->a:Lcom/tencent/kgvmp/d/b;

    invoke-static {v0}, Lcom/tencent/kgvmp/d/b;->b(Lcom/tencent/kgvmp/d/b;)Lcom/tencent/kgvmp/VmpCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/kgvmp/d/c;->a:Lcom/tencent/kgvmp/d/b;

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/d/b;->b(Lcom/tencent/kgvmp/d/b;I)I

    if-lez v1, :cond_0

    const-string/jumbo v0, "{"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tencent/kgvmp/a/g;->FREQUENCY_SIGNAL:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\":\"2\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tencent/kgvmp/a/g;->FREQUENCY_LEVEL:Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/g;->getKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/kgvmp/d/c;->a:Lcom/tencent/kgvmp/d/b;

    invoke-static {v1}, Lcom/tencent/kgvmp/d/b;->b(Lcom/tencent/kgvmp/d/b;)Lcom/tencent/kgvmp/VmpCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/kgvmp/VmpCallback;->notifySystemInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/kgvmp/d/c;->a:Lcom/tencent/kgvmp/d/b;

    invoke-static {v0}, Lcom/tencent/kgvmp/d/b;->c(Lcom/tencent/kgvmp/d/b;)Lcom/tencent/vmp/GCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/kgvmp/d/c;->a:Lcom/tencent/kgvmp/d/b;

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/d/b;->b(Lcom/tencent/kgvmp/d/b;I)I

    iget-object v0, p0, Lcom/tencent/kgvmp/d/c;->a:Lcom/tencent/kgvmp/d/b;

    invoke-static {v0}, Lcom/tencent/kgvmp/d/b;->c(Lcom/tencent/kgvmp/d/b;)Lcom/tencent/vmp/GCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/vmp/GCallback;->changeSpecialEffects(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
