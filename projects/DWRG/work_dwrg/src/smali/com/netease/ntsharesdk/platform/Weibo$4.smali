.class Lcom/netease/ntsharesdk/platform/Weibo$4;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntsharesdk/platform/Weibo;->doAttention(Lcom/netease/ntsharesdk/ShareArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntsharesdk/platform/Weibo;

.field private final synthetic val$args:Lcom/netease/ntsharesdk/ShareArgs;


# direct methods
.method constructor <init>(Lcom/netease/ntsharesdk/platform/Weibo;Lcom/netease/ntsharesdk/ShareArgs;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/ntsharesdk/platform/Weibo$4;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    iput-object p2, p0, Lcom/netease/ntsharesdk/platform/Weibo$4;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attentResult(Z)V
    .locals 6
    .param p1, "suc"    # Z

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attention suc: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$4;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$4;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    invoke-virtual {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Weibo$4;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    invoke-interface {v1, v2, v0, v3}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 388
    if-eqz p1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo$4;->this$0:Lcom/netease/ntsharesdk/platform/Weibo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wa-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/Weibo$4;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    invoke-static {v0, v1, v2}, Lcom/netease/ntsharesdk/platform/Weibo;->access$4(Lcom/netease/ntsharesdk/platform/Weibo;Ljava/lang/String;Lcom/netease/ntsharesdk/ShareArgs;)V

    .line 391
    :cond_0
    return-void

    .line 387
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
