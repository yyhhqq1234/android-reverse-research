.class final Lcom/onesignal/user/internal/properties/PropertiesModel$tags$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PropertiesModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/user/internal/properties/PropertiesModel;->getTags()Lcom/onesignal/common/modeling/MapModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onesignal/common/modeling/MapModel<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onesignal/common/modeling/MapModel;",
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
.field final synthetic this$0:Lcom/onesignal/user/internal/properties/PropertiesModel;


# direct methods
.method constructor <init>(Lcom/onesignal/user/internal/properties/PropertiesModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/user/internal/properties/PropertiesModel$tags$2;->this$0:Lcom/onesignal/user/internal/properties/PropertiesModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onesignal/common/modeling/MapModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/common/modeling/MapModel<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/onesignal/common/modeling/MapModel;

    iget-object v1, p0, Lcom/onesignal/user/internal/properties/PropertiesModel$tags$2;->this$0:Lcom/onesignal/user/internal/properties/PropertiesModel;

    check-cast v1, Lcom/onesignal/common/modeling/Model;

    const-string v2, "tags"

    invoke-direct {v0, v1, v2}, Lcom/onesignal/common/modeling/MapModel;-><init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/onesignal/user/internal/properties/PropertiesModel$tags$2;->invoke()Lcom/onesignal/common/modeling/MapModel;

    move-result-object v0

    return-object v0
.end method
