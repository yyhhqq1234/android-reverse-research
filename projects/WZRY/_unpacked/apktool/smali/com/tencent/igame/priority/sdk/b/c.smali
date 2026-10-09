.class public Lcom/tencent/igame/priority/sdk/b/c;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Ljava/lang/String;

.field private a:Lorg/json/JSONArray;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILorg/json/JSONArray;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/b/c;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/igame/a/a/c;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/b/c;->a:Ljava/lang/String;

    const-string v0, "igame_priority_sdk_pref_wzry_key_device_id"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/b/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/igame/priority/sdk/b/c;->c:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/igame/priority/sdk/b/c;->a:I

    invoke-static {p1}, Lcom/tencent/igame/a/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/b/c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/igame/priority/sdk/b/c;->a:Lorg/json/JSONArray;

    iput-boolean p5, p0, Lcom/tencent/igame/priority/sdk/b/c;->a:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 8

    const-string/jumbo v0, "\u6b63\u5728\u4e0a\u62a5\u7684\u65e5\u5fd7..."

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/igame/priority/sdk/b/b;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/b/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/b/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/igame/priority/sdk/b/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/igame/priority/sdk/b/c;->c:Ljava/lang/String;

    iget v5, p0, Lcom/tencent/igame/priority/sdk/b/c;->a:I

    iget-object v6, p0, Lcom/tencent/igame/priority/sdk/b/c;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/igame/priority/sdk/b/c;->a:Lorg/json/JSONArray;

    invoke-direct/range {v0 .. v7}, Lcom/tencent/igame/priority/sdk/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)V

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/b/b;->a()Lcom/tencent/igame/priority/sdk/d/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/tencent/igame/priority/sdk/d/b/a;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload Log Task Result: Code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ; Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/igame/priority/sdk/b/c;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/igame/priority/sdk/b/a;->a()Lcom/tencent/igame/priority/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/b/a;->a()V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/igame/priority/sdk/b/c;->a([Ljava/lang/Void;)Lcom/tencent/igame/priority/sdk/d/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/igame/priority/sdk/d/b/a;

    invoke-virtual {p0, p1}, Lcom/tencent/igame/priority/sdk/b/c;->a(Lcom/tencent/igame/priority/sdk/d/b/a;)V

    return-void
.end method
