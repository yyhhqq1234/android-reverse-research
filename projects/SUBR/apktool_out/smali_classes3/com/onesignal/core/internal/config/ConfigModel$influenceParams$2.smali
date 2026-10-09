.class final Lcom/onesignal/core/internal/config/ConfigModel$influenceParams$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ConfigModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/core/internal/config/ConfigModel;->getInfluenceParams()Lcom/onesignal/core/internal/config/InfluenceConfigModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/core/internal/config/ConfigModel;


# direct methods
.method constructor <init>(Lcom/onesignal/core/internal/config/ConfigModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/core/internal/config/ConfigModel$influenceParams$2;->this$0:Lcom/onesignal/core/internal/config/ConfigModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 296
    new-instance v0, Lcom/onesignal/core/internal/config/InfluenceConfigModel;

    iget-object v1, p0, Lcom/onesignal/core/internal/config/ConfigModel$influenceParams$2;->this$0:Lcom/onesignal/core/internal/config/ConfigModel;

    check-cast v1, Lcom/onesignal/common/modeling/Model;

    const-string v2, "influenceParams"

    invoke-direct {v0, v1, v2}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;-><init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    return-object v0
.end method
