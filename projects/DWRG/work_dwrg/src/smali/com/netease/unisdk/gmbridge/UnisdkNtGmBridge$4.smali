.class final Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$4;
.super Ljava/lang/Object;
.source "UnisdkNtGmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntOpenGMPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$refer:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$4;->val$refer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->destroy()V

    .line 186
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .line 188
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    sget-object v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .line 189
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$4;->val$refer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->show(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$4;->val$refer:Ljava/lang/String;

    sput-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    .line 191
    return-void
.end method
