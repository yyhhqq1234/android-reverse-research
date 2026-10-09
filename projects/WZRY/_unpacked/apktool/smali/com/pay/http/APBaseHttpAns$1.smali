.class Lcom/pay/http/APBaseHttpAns$1;
.super Ljava/lang/Object;
.source "APBaseHttpAns.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pay/http/APBaseHttpAns;->requestAgain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pay/http/APBaseHttpAns;


# direct methods
.method constructor <init>(Lcom/pay/http/APBaseHttpAns;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pay/http/APBaseHttpAns;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/pay/http/APBaseHttpAns$1;->this$0:Lcom/pay/http/APBaseHttpAns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/pay/http/APBaseHttpAns$1;->this$0:Lcom/pay/http/APBaseHttpAns;

    invoke-static {v0}, Lcom/pay/http/APBaseHttpAns;->access$000(Lcom/pay/http/APBaseHttpAns;)Lcom/pay/http/APBaseHttpReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pay/http/APBaseHttpReq;->requestAgain()V

    .line 175
    return-void
.end method
