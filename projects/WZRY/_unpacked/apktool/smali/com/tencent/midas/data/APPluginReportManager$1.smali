.class Lcom/tencent/midas/data/APPluginReportManager$1;
.super Ljava/lang/Object;
.source "APPluginReportManager.java"

# interfaces
.implements Lcom/pay/http/IAPHttpAnsObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/data/APPluginReportManager;->reportImmediatelyOneRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/data/APPluginReportManager;


# direct methods
.method constructor <init>(Lcom/tencent/midas/data/APPluginReportManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/data/APPluginReportManager;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginReportManager$1;->this$0:Lcom/tencent/midas/data/APPluginReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/pay/http/APBaseHttpAns;)V
    .locals 0
    .param p1, "ans"    # Lcom/pay/http/APBaseHttpAns;

    .prologue
    .line 570
    return-void
.end method

.method public onFinish(Lcom/pay/http/APBaseHttpAns;)V
    .locals 0
    .param p1, "ans"    # Lcom/pay/http/APBaseHttpAns;

    .prologue
    .line 566
    return-void
.end method

.method public onStop(Lcom/pay/http/APBaseHttpAns;)V
    .locals 0
    .param p1, "ans"    # Lcom/pay/http/APBaseHttpAns;

    .prologue
    .line 562
    return-void
.end method
