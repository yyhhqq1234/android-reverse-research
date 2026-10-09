.class public Lcom/tencent/friday/uikit/c/c;
.super Ljava/lang/Object;
.source "MsgReceiver.java"


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/tencent/friday/uikit/c/c;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/c/c;->b:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public declared-synchronized a([B[B)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/c;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 37
    const-string v0, "friday rec msg"

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/d/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;

    invoke-static {p1, v0}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;

    .line 40
    if-nez v0, :cond_0

    .line 41
    const-string v0, "receiveData msg errorcall target not found"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    :try_start_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/c;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :goto_0
    monitor-exit p0

    return-object v4

    .line 44
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->getTargetType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 50
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->getTargetID()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v2

    iget v2, v2, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    invoke-virtual {v1, v2, p2}, Lcom/tencent/friday/uikit/b/a/b;->a(I[B)V

    .line 54
    :goto_1
    sget-boolean v1, Lcom/tencent/friday/uikit/a/a/a;->a:Z

    if-eqz v1, :cond_1

    .line 55
    sget-object v1, Lcom/tencent/friday/uikit/a/a/a;->b:Ljava/lang/String;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->getTargetType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/friday/uikit/c/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_target"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/tencent/friday/uikit/a/b;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTarget;->getTargetType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/tencent/friday/uikit/c/c;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_param"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lcom/tencent/friday/uikit/a/b;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 58
    sget v0, Lcom/tencent/friday/uikit/c/c;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/friday/uikit/c/c;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/c;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 46
    :pswitch_0
    :try_start_5
    const-class v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;

    invoke-static {p2, v1}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v1

    check-cast v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;

    .line 47
    invoke-static {}, Lcom/tencent/friday/uikit/d/c;->b()Lcom/tencent/friday/uikit/d/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/friday/uikit/d/c;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 65
    :catchall_1
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/tencent/friday/uikit/c/c;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
