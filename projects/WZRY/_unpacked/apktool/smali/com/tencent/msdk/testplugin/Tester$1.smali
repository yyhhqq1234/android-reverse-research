.class Lcom/tencent/msdk/testplugin/Tester$1;
.super Ljava/lang/Object;
.source "Tester.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/testplugin/Tester;->startTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/testplugin/Tester;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/testplugin/Tester;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/testplugin/Tester;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tencent/msdk/testplugin/Tester$1;->this$0:Lcom/tencent/msdk/testplugin/Tester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/msdk/testplugin/Tester$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/msdk/testplugin/Tester$1$1;-><init>(Lcom/tencent/msdk/testplugin/Tester$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 192
    return-void
.end method
