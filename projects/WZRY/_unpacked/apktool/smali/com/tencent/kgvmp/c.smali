.class Lcom/tencent/kgvmp/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/vmp/GCallback;


# instance fields
.field final synthetic a:Lcom/tencent/vmp/GCallbackStr;

.field final synthetic b:Lcom/tencent/kgvmp/PerformanceAdjuster;


# direct methods
.method constructor <init>(Lcom/tencent/kgvmp/PerformanceAdjuster;Lcom/tencent/vmp/GCallbackStr;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/c;->b:Lcom/tencent/kgvmp/PerformanceAdjuster;

    iput-object p2, p0, Lcom/tencent/kgvmp/c;->a:Lcom/tencent/vmp/GCallbackStr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeSpecialEffects(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/kgvmp/c;->a:Lcom/tencent/vmp/GCallbackStr;

    const-string v1, "LOW"

    invoke-interface {v0, v1}, Lcom/tencent/vmp/GCallbackStr;->changeSpecialEffects(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/kgvmp/c;->a:Lcom/tencent/vmp/GCallbackStr;

    const-string v1, "MIDDLE"

    invoke-interface {v0, v1}, Lcom/tencent/vmp/GCallbackStr;->changeSpecialEffects(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/tencent/kgvmp/c;->a:Lcom/tencent/vmp/GCallbackStr;

    const-string v1, "HIGH"

    invoke-interface {v0, v1}, Lcom/tencent/vmp/GCallbackStr;->changeSpecialEffects(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/kgvmp/c;->a:Lcom/tencent/vmp/GCallbackStr;

    const-string v1, "DEFAULT"

    invoke-interface {v0, v1}, Lcom/tencent/vmp/GCallbackStr;->changeSpecialEffects(Ljava/lang/String;)V

    goto :goto_0
.end method
