.class Lcom/tencent/msdk/testplugin/Tester$TestUiHandler$1;
.super Ljava/lang/Object;
.source "Tester.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/testplugin/Tester$TestUiHandler;-><init>(Lcom/tencent/msdk/testplugin/Tester;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Lcom/tencent/msdk/testplugin/Tester;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/testplugin/Tester;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/tencent/msdk/testplugin/Tester$TestUiHandler$1;->val$this$0:Lcom/tencent/msdk/testplugin/Tester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 268
    iget-object v3, p0, Lcom/tencent/msdk/testplugin/Tester$TestUiHandler$1;->val$this$0:Lcom/tencent/msdk/testplugin/Tester;

    invoke-static {v3}, Lcom/tencent/msdk/testplugin/Tester;->access$500(Lcom/tencent/msdk/testplugin/Tester;)Ljava/lang/Class;

    move-result-object v2

    .line 270
    .local v2, "testClz":Ljava/lang/Class;
    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 272
    .local v1, "init":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/msdk/testplugin/Tester$TestUiHandler$1;->val$this$0:Lcom/tencent/msdk/testplugin/Tester;

    invoke-static {v5}, Lcom/tencent/msdk/testplugin/Tester;->access$300(Lcom/tencent/msdk/testplugin/Tester;)Landroid/app/Activity;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tencent/msdk/testplugin/Tester$TestUiHandler$1;->val$this$0:Lcom/tencent/msdk/testplugin/Tester;

    invoke-static {v5}, Lcom/tencent/msdk/testplugin/Tester;->access$200(Lcom/tencent/msdk/testplugin/Tester;)Lcom/tencent/msdk/testplugin/PluginContext;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 287
    .end local v1    # "init":Ljava/lang/reflect/Constructor;
    :goto_0
    return v6

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v3, "\u672a\u627e\u5230\u6d4b\u8bd5\u7c7b\u7684\u6784\u9020\u65b9\u6cd5"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u672a\u5b9e\u4f8b\u5316\u6d4b\u8bd5\u7c7b:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 279
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u65e0\u6cd5\u62f7\u8d1dapk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "\u5b9e\u4f8b\u5316\u53c2\u6570\u9519\u8bef,\u672a\u5b9e\u4f8b\u5316\u6d4b\u8bd5\u7c7b"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u672a\u5b9e\u4f8b\u5316\u6d4b\u8bd5\u7c7b:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
