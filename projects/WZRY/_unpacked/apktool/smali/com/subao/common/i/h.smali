.class public Lcom/subao/common/i/h;
.super Ljava/lang/Object;
.source "MessageSenderImpl.java"

# interfaces
.implements Lcom/subao/common/i/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/i/h$a;
    }
.end annotation


# instance fields
.field final a:Lcom/subao/common/i/h$a;


# direct methods
.method private constructor <init>(Lcom/subao/common/e/al;Lcom/subao/common/i/i;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/subao/common/i/h$a;

    invoke-direct {v0, p1, p2}, Lcom/subao/common/i/h$a;-><init>(Lcom/subao/common/e/al;Lcom/subao/common/i/i;)V

    iput-object v0, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    .line 49
    return-void
.end method

.method public static a(Lcom/subao/common/e/al;Lcom/subao/common/i/i;)Lcom/subao/common/i/g;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/subao/common/i/h;

    invoke-direct {v0, p0, p1}, Lcom/subao/common/i/h;-><init>(Lcom/subao/common/e/al;Lcom/subao/common/i/i;)V

    .line 53
    iget-object v1, v0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    new-instance v2, Lcom/subao/common/i/h$a$p;

    iget-object v3, v0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/subao/common/i/h$a$p;-><init>(Lcom/subao/common/i/h$a;)V

    invoke-virtual {v1, v2}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-object v0
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/subao/common/c;)[B
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/subao/common/i/h;->b(Lcom/subao/common/c;)[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/subao/common/c;)[B
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 59
    new-instance v1, Landroid/util/JsonWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 61
    :try_start_0
    invoke-interface {p0, v1}, Lcom/subao/common/c;->serialize(Landroid/util/JsonWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 65
    const-string v1, "SubaoMessage"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "SubaoMessage"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public a(IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/i/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    new-instance v1, Lcom/subao/common/i/h$a$n;

    iget-object v2, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/subao/common/i/h$a$n;-><init>(Lcom/subao/common/i/h$a;IILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public a(Lcom/subao/common/i/n$a;)V
    .locals 3

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    new-instance v1, Lcom/subao/common/i/h$a$f;

    iget-object v2, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/subao/common/i/h$a$f;-><init>(Lcom/subao/common/i/h$a;Lcom/subao/common/i/n$a;)V

    invoke-virtual {v0, v1}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    .line 148
    :cond_0
    return-void
.end method

.method public a(Lcom/subao/common/i/n;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    new-instance v1, Lcom/subao/common/i/h$a$h;

    iget-object v2, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/subao/common/i/h$a$h;-><init>(Lcom/subao/common/i/h$a;Lcom/subao/common/i/n;)V

    invoke-virtual {v0, v1}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public a(Lcom/subao/common/i/o;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    new-instance v1, Lcom/subao/common/i/h$a$j;

    iget-object v2, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/subao/common/i/h$a$j;-><init>(Lcom/subao/common/i/h$a;Lcom/subao/common/i/o;)V

    invoke-virtual {v0, v1}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method public a(Lcom/subao/common/i/p$c;)V
    .locals 3

    .prologue
    .line 210
    invoke-static {}, Lcom/subao/common/i/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    new-instance v1, Lcom/subao/common/i/h$a$d;

    iget-object v2, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/subao/common/i/h$a$d;-><init>(Lcom/subao/common/i/h$a;Lcom/subao/common/i/p$c;)V

    invoke-virtual {v0, v1}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    .line 213
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    new-instance v1, Lcom/subao/common/i/h$a$i;

    iget-object v2, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/subao/common/i/h$a$i;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    new-instance v1, Lcom/subao/common/i/h$a$g;

    iget-object v2, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1, p2}, Lcom/subao/common/i/h$a$g;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const-string v0, "SubaoMessage"

    const-string v1, "Empty or Null message id"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    if-nez p2, :cond_2

    .line 164
    const-string v0, "SubaoMessage"

    const-string v1, "Null Message Body"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_2
    const-string v0, "SubaoMessage"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    const-string v0, "SubaoMessage"

    const-string v1, "onLinkMsg, id=%s, finish=%b, body:\n%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 169
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 168
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v0}, Lcom/subao/common/i/h$a;->a()Lcom/subao/common/i/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/subao/common/i/i;->f()Lcom/subao/common/i/f;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/subao/common/i/f;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_1
    if-eqz p3, :cond_0

    .line 180
    iget-object v0, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    new-instance v2, Lcom/subao/common/i/h$a$k;

    iget-object v3, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, p1, v1}, Lcom/subao/common/i/h$a$k;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;[B)V

    invoke-virtual {v0, v2}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    new-instance v1, Lcom/subao/common/i/h$a$l;

    iget-object v2, p0, Lcom/subao/common/i/h;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/subao/common/i/h$a$l;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v0, "SubaoMessage"

    const-string v1, "Empty or Null Qos from JNI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
