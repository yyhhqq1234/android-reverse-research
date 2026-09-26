.class public Lcom/netease/mcount/MCountService;
.super Landroid/app/IntentService;


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.netease.mcount.MCountService"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "MCountService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/mcount/MCountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "0"

    sget-boolean v2, Lcom/netease/mcount/h;->c:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    invoke-static {v1}, Lcom/netease/mcount/k;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v0, Lcom/netease/mcount/MCountService;

    const-string v2, "com.netease.mcount.MCountService"

    invoke-static {v1, v0, v2}, Lcom/netease/mcount/a;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    sget-boolean v0, Lcom/netease/mcount/h;->c:Z

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lcom/netease/mcount/k;->a(Landroid/content/Context;Z)V

    goto :goto_1
.end method
