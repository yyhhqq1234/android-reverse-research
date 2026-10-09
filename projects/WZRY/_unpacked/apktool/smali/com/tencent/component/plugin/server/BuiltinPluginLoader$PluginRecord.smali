.class final Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;
.super Ljava/lang/Object;
.source "BuiltinPluginLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/server/BuiltinPluginLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PluginRecord"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field loaded:Z

.field path:Ljava/lang/String;

.field uri:Ljava/lang/String;

.field version:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->loaded:Z

    return-void
.end method

.method private static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 218
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 210
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;

    if-nez v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 213
    check-cast v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;

    .line 214
    .local v0, "cmp":Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;
    iget-object v2, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->path:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->version:I

    iget v3, v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->version:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 201
    const/16 v0, 0x11

    .line 202
    .local v0, "result":I
    iget-object v1, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 203
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->path:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 204
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->version:I

    add-int v0, v1, v2

    .line 205
    return v0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->version:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
