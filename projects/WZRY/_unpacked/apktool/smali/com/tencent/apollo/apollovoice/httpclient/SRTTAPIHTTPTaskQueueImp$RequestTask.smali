.class Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;
.super Ljava/lang/Object;
.source "SRTTAPIHTTPTaskQueueImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;


# direct methods
.method constructor <init>(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 355
    :goto_0
    iget-object v2, p0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-static {v2}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->access$000(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-static {v2}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->access$000(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    .local v1, "task":Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;
    iget v2, v1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->type:I

    packed-switch v2, :pswitch_data_0

    .line 381
    invoke-static {}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SRTTAPIHTTPTaskQueueImp]Unknown type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    .end local v1    # "task":Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;
    :catch_1
    move-exception v0

    .line 367
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "task":Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;
    :pswitch_0
    iget-object v2, p0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    iget v3, v1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->session:I

    invoke-static {v2, v3}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->access$100(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;I)V

    goto :goto_0

    .line 375
    :pswitch_1
    iget-object v2, p0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-static {v2, v1}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->access$200(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;)V

    goto :goto_0

    .line 378
    :pswitch_2
    iget-object v2, p0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;->this$0:Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-static {v2, v1}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->access$300(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;)V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
