.class synthetic Lcom/tencent/msdk/qq/QQVersionApiManager$1;
.super Ljava/lang/Object;
.source "QQVersionApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/qq/QQVersionApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$tencent$msdk$qq$ApiName:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Lcom/tencent/msdk/qq/ApiName;->values()[Lcom/tencent/msdk/qq/ApiName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/msdk/qq/QQVersionApiManager$1;->$SwitchMap$com$tencent$msdk$qq$ApiName:[I

    :try_start_0
    sget-object v0, Lcom/tencent/msdk/qq/QQVersionApiManager$1;->$SwitchMap$com$tencent$msdk$qq$ApiName:[I

    sget-object v1, Lcom/tencent/msdk/qq/ApiName;->WGSendToQQWithPhoto:Lcom/tencent/msdk/qq/ApiName;

    invoke-virtual {v1}, Lcom/tencent/msdk/qq/ApiName;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
