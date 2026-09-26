.class final Lcom/netease/epay/sdk/core/a$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "Epay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/netease/epay/sdk/core/a$1;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/netease/epay/sdk/core/a$1;->b:Z

    iput-boolean p3, p0, Lcom/netease/epay/sdk/core/a$1;->c:Z

    iput-boolean p4, p0, Lcom/netease/epay/sdk/core/a$1;->d:Z

    iput-object p5, p0, Lcom/netease/epay/sdk/core/a$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 7
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 89
    const-string v0, "pay"

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/epay/sdk/core/a$1;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/netease/epay/sdk/core/a$1;->b:Z

    iget-boolean v4, p0, Lcom/netease/epay/sdk/core/a$1;->c:Z

    iget-boolean v5, p0, Lcom/netease/epay/sdk/core/a$1;->d:Z

    iget-object v6, p0, Lcom/netease/epay/sdk/core/a$1;->e:Ljava/lang/String;

    .line 90
    invoke-static {v2, v3, v4, v5, v6}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getPayJson(Ljava/lang/String;ZZZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    .line 89
    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 91
    return-void
.end method
