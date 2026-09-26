.class Lcom/netease/mpay/widget/am$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/am;

.field private b:Lcom/netease/mpay/widget/am$c;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/netease/mpay/widget/am;Lcom/netease/mpay/widget/am$c;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/widget/am$a;->b:Lcom/netease/mpay/widget/am$c;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, ""

    const-string v0, "/system/bin/ping -c 1 -t %d "

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v2}, Lcom/netease/mpay/widget/am;->g(Lcom/netease/mpay/widget/am;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/widget/am$b;

    iget-object v2, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    iget-object v3, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v3}, Lcom/netease/mpay/widget/am;->g(Lcom/netease/mpay/widget/am;)I

    move-result v3

    invoke-direct {v1, v2, p0, v3}, Lcom/netease/mpay/widget/am$b;-><init>(Lcom/netease/mpay/widget/am;Lcom/netease/mpay/widget/am$a;I)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/am$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    iget-object v1, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v1}, Lcom/netease/mpay/widget/am;->g(Lcom/netease/mpay/widget/am;)I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    iget-object v2, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v2, v0}, Lcom/netease/mpay/widget/am;->c(Lcom/netease/mpay/widget/am;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/mpay/widget/am;->b(Lcom/netease/mpay/widget/am;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->d(Lcom/netease/mpay/widget/am;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/am$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v3, v0}, Lcom/netease/mpay/widget/am;->a(Lcom/netease/mpay/widget/am;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/netease/mpay/widget/am$a;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    const/16 v2, 0x14

    iget-boolean v0, p0, Lcom/netease/mpay/widget/am$a;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->e(Lcom/netease/mpay/widget/am;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->e(Lcom/netease/mpay/widget/am;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->e(Lcom/netease/mpay/widget/am;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v1}, Lcom/netease/mpay/widget/am;->e(Lcom/netease/mpay/widget/am;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "ip"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v1}, Lcom/netease/mpay/widget/am;->h(Lcom/netease/mpay/widget/am;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->g(Lcom/netease/mpay/widget/am;)I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0, v2}, Lcom/netease/mpay/widget/am;->a(Lcom/netease/mpay/widget/am;I)I

    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->b:Lcom/netease/mpay/widget/am$c;

    iget-object v1, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v1}, Lcom/netease/mpay/widget/am;->f(Lcom/netease/mpay/widget/am;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/widget/am$c;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->k(Lcom/netease/mpay/widget/am;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->g(Lcom/netease/mpay/widget/am;)I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->i(Lcom/netease/mpay/widget/am;)I

    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    new-instance v1, Lcom/netease/mpay/widget/am$a;

    iget-object v2, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    iget-object v3, p0, Lcom/netease/mpay/widget/am$a;->b:Lcom/netease/mpay/widget/am$c;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/am$a;-><init>(Lcom/netease/mpay/widget/am;Lcom/netease/mpay/widget/am$c;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/am;->a(Lcom/netease/mpay/widget/am;Lcom/netease/mpay/widget/am$a;)Lcom/netease/mpay/widget/am$a;

    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->j(Lcom/netease/mpay/widget/am;)Lcom/netease/mpay/widget/am$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/am$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->f(Lcom/netease/mpay/widget/am;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "traceroute\u5931\u8d25\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/widget/am$a;->b:Lcom/netease/mpay/widget/am$c;

    iget-object v1, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v1}, Lcom/netease/mpay/widget/am;->f(Lcom/netease/mpay/widget/am;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/widget/am$c;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/widget/am$a;->c:Z

    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ip"

    aget-object v2, p1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v1}, Lcom/netease/mpay/widget/am;->e(Lcom/netease/mpay/widget/am;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/widget/am$a;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v1}, Lcom/netease/mpay/widget/am;->f(Lcom/netease/mpay/widget/am;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/widget/am$a;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/widget/am$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/widget/am$a;->a([Ljava/lang/String;)V

    return-void
.end method
