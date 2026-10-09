.class public final Lcom/bytedance/applog/AppLogManager;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/bytedance/applog/IAppLogInstance;
    .locals 1

    invoke-static {p0}, Lgbsdk/optional/applog/abce;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lgbsdk/optional/applog/ai;->b(Ljava/lang/String;)Lcom/bytedance/bdtracker/d;

    move-result-object p0

    :goto_0
    return-object p0
.end method
