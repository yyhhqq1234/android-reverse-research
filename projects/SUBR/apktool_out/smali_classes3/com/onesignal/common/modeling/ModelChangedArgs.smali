.class public final Lcom/onesignal/common/modeling/ModelChangedArgs;
.super Ljava/lang/Object;
.source "IModelChangedHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onesignal/common/modeling/ModelChangedArgs;",
        "",
        "model",
        "Lcom/onesignal/common/modeling/Model;",
        "path",
        "",
        "property",
        "oldValue",
        "newValue",
        "(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V",
        "getModel",
        "()Lcom/onesignal/common/modeling/Model;",
        "getNewValue",
        "()Ljava/lang/Object;",
        "getOldValue",
        "getPath",
        "()Ljava/lang/String;",
        "getProperty",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final model:Lcom/onesignal/common/modeling/Model;

.field private final newValue:Ljava/lang/Object;

.field private final oldValue:Ljava/lang/Object;

.field private final path:Ljava/lang/String;

.field private final property:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/onesignal/common/modeling/ModelChangedArgs;->model:Lcom/onesignal/common/modeling/Model;

    .line 38
    iput-object p2, p0, Lcom/onesignal/common/modeling/ModelChangedArgs;->path:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/onesignal/common/modeling/ModelChangedArgs;->property:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/onesignal/common/modeling/ModelChangedArgs;->oldValue:Ljava/lang/Object;

    .line 50
    iput-object p5, p0, Lcom/onesignal/common/modeling/ModelChangedArgs;->newValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getModel()Lcom/onesignal/common/modeling/Model;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelChangedArgs;->model:Lcom/onesignal/common/modeling/Model;

    return-object v0
.end method

.method public final getNewValue()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelChangedArgs;->newValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final getOldValue()Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelChangedArgs;->oldValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelChangedArgs;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getProperty()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelChangedArgs;->property:Ljava/lang/String;

    return-object v0
.end method
