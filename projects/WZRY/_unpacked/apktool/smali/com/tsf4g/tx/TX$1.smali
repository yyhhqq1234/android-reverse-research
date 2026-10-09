.class Lcom/tsf4g/tx/TX$1;
.super Landroid/os/Handler;
.source "TX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tsf4g/tx/TX;->CreateMainHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tsf4g/tx/TX;


# direct methods
.method constructor <init>(Lcom/tsf4g/tx/TX;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tsf4g/tx/TX$1;->this$0:Lcom/tsf4g/tx/TX;

    .line 145
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/tsf4g/tx/TX$1;->this$0:Lcom/tsf4g/tx/TX;

    invoke-static {v1}, Lcom/tsf4g/tx/TX;->access$0(Lcom/tsf4g/tx/TX;)Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 148
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Main Thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tsf4g/tx/TX$1;->this$0:Lcom/tsf4g/tx/TX;

    invoke-static {v2}, Lcom/tsf4g/tx/TX;->access$0(Lcom/tsf4g/tx/TX;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Current Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/tsf4g/tx/TX$1;->this$0:Lcom/tsf4g/tx/TX;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tsf4g/tx/TX;->access$1(Lcom/tsf4g/tx/TX;I)V

    .line 156
    iget-object v0, p0, Lcom/tsf4g/tx/TX$1;->this$0:Lcom/tsf4g/tx/TX;

    invoke-static {v0}, Lcom/tsf4g/tx/TX;->access$2(Lcom/tsf4g/tx/TX;)V

    .line 157
    return-void

    .line 151
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Main Thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tsf4g/tx/TX$1;->this$0:Lcom/tsf4g/tx/TX;

    invoke-static {v2}, Lcom/tsf4g/tx/TX;->access$0(Lcom/tsf4g/tx/TX;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Current Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
