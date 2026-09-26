.class public Lcom/netease/download/task/ParamController;
.super Ljava/lang/Object;
.source "ParamController.java"


# static fields
.field private static sParamController:Lcom/netease/download/task/ParamController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/task/ParamController;->sParamController:Lcom/netease/download/task/ParamController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getInstances()Lcom/netease/download/task/ParamController;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netease/download/task/ParamController;->sParamController:Lcom/netease/download/task/ParamController;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/netease/download/task/ParamController;

    invoke-direct {v0}, Lcom/netease/download/task/ParamController;-><init>()V

    sput-object v0, Lcom/netease/download/task/ParamController;->sParamController:Lcom/netease/download/task/ParamController;

    .line 28
    :cond_0
    sget-object v0, Lcom/netease/download/task/ParamController;->sParamController:Lcom/netease/download/task/ParamController;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
