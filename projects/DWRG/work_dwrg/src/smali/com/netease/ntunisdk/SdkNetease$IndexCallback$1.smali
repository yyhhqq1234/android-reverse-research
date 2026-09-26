.class Lcom/netease/ntunisdk/SdkNetease$IndexCallback$1;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->ProcessResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/SdkNetease$IndexCallback;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNetease$IndexCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/ntunisdk/SdkNetease$IndexCallback;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback$1;->this$1:Lcom/netease/ntunisdk/SdkNetease$IndexCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback$1;->this$1:Lcom/netease/ntunisdk/SdkNetease$IndexCallback;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkNetease;->access$800(Lcom/netease/ntunisdk/SdkNetease;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u4fdd\u6301\u751f\u6210\u4e8c\u7ef4\u7801\u7684\u8d26\u53f7\u548c\u624b\u673a\u7aef\u767b\u9646\u8d26\u53f7\u4e00\u81f4\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1161
    return-void
.end method
