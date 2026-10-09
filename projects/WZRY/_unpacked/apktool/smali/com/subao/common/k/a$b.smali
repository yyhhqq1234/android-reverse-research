.class Lcom/subao/common/k/a$b;
.super Ljava/lang/Object;
.source "CellularOperator.java"

# interfaces
.implements Lcom/subao/common/k/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/k/a$a;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/k/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subao/common/k/a$a;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/subao/common/k/a$b;->a:Lcom/subao/common/k/a$a;

    .line 87
    return-void
.end method

.method static a(Lcom/subao/common/h;)I
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/subao/common/k/a$1;->a:[I

    invoke-virtual {p0}, Lcom/subao/common/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    const/16 v0, 0x7d8

    :goto_0
    return v0

    .line 123
    :pswitch_0
    const/16 v0, 0x7d3

    goto :goto_0

    .line 125
    :pswitch_1
    const/16 v0, 0x7d7

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static a(Lcom/subao/common/k/b$b;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :try_start_1
    invoke-interface {p0, v1}, Lcom/subao/common/k/b$b;->a(Ljava/net/DatagramSocket;)V

    .line 101
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v2, 0x7df

    invoke-direct {v0, v2}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    :try_start_2
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v2, 0x7df

    invoke-direct {v0, v2}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    throw v0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    const-string v1, "SubaoParallel"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/subao/common/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7d5

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0

    .line 105
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 109
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 111
    return v0
.end method

.method private a()Lcom/subao/common/k/b$b;
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 163
    :goto_0
    monitor-exit p0

    .line 164
    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/k/b$b;

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static a(Landroid/content/Context;Lcom/subao/common/k/b$b;)V
    .locals 2

    .prologue
    .line 139
    :try_start_0
    invoke-interface {p1, p0}, Lcom/subao/common/k/b$b;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const-string v0, "SubaoParallel"

    const-string v1, "The network type is not mobile, can not create FD by mobile"

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7de

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 153
    :cond_0
    return-void

    .line 145
    :cond_1
    :try_start_1
    sget-object v1, Lcom/subao/common/j/j$a;->d:Lcom/subao/common/j/j$a;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/subao/common/j/f;->a(I)Lcom/subao/common/j/j$a;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 146
    const-string v0, "SubaoParallel"

    const-string v1, "The network type is 2G, can not create FD by mobile"

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/subao/common/k/b$d;

    const/16 v1, 0x7d4

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/subao/common/k/a$b;->a()Lcom/subao/common/k/b$b;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    const-string v0, "SubaoParallel"

    const-string v1, "No available cellular network."

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {p1}, Lcom/subao/common/j/i;->a(Landroid/content/Context;)Lcom/subao/common/h;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/subao/common/k/a$b;->a(Lcom/subao/common/h;)I

    move-result v0

    .line 188
    new-instance v1, Lcom/subao/common/k/b$d;

    invoke-direct {v1, v0}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v1

    .line 196
    :cond_0
    invoke-static {p1, v0}, Lcom/subao/common/k/a$b;->a(Landroid/content/Context;Lcom/subao/common/k/b$b;)V

    .line 197
    invoke-static {v0}, Lcom/subao/common/k/a$b;->a(Lcom/subao/common/k/b$b;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/subao/common/k/b$b;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 252
    iget-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/k/b$b;

    .line 253
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 255
    monitor-exit p0

    .line 264
    :cond_0
    :goto_1
    return-void

    .line 251
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 260
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v1, p0, Lcom/subao/common/k/a$b;->a:Lcom/subao/common/k/a$a;

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    .line 262
    iget-object v0, p0, Lcom/subao/common/k/a$b;->a:Lcom/subao/common/k/a$a;

    invoke-interface {v0, v2}, Lcom/subao/common/k/a$a;->a(Z)V

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(Lcom/subao/common/k/b$b;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 274
    iget-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/k/b$b;

    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/subao/common/k/a$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 281
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subao/common/k/a$b;->a:Lcom/subao/common/k/a$a;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/subao/common/k/a$b;->a:Lcom/subao/common/k/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/subao/common/k/a$a;->a(Z)V

    goto :goto_0

    .line 273
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 281
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
