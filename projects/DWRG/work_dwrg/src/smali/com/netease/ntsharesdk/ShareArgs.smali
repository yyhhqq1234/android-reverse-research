.class public Lcom/netease/ntsharesdk/ShareArgs;
.super Ljava/lang/Object;
.source "ShareArgs.java"


# static fields
.field public static final COMMENT:Ljava/lang/String; = "comment"

.field public static final IMG_DATA:Ljava/lang/String; = "img_data"

.field public static final IMG_PATH:Ljava/lang/String; = "img_path"

.field public static final IMG_URL:Ljava/lang/String; = "img_url"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final THUMB_DATA:Ljava/lang/String; = "thumb_data"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TO_BLOG:Ljava/lang/String; = "to_blog"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private args:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private failMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntsharesdk/ShareArgs;->args:Ljava/util/HashMap;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntsharesdk/ShareArgs;->failMsg:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntsharesdk/ShareArgs;->args:Ljava/util/HashMap;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntsharesdk/ShareArgs;->failMsg:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/netease/ntsharesdk/ShareArgs;->failMsg:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getFailMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareArgs;->failMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Ljava/lang/Object;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareArgs;->args:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareArgs;->args:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 34
    .end local p2    # "defVal":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p2

    .line 33
    .restart local p2    # "defVal":Ljava/lang/Object;
    :cond_1
    if-nez p2, :cond_0

    const-string v0, "title"

    if-eq p1, v0, :cond_2

    const-string v0, "text"

    if-ne p1, v0, :cond_0

    :cond_2
    const-string p2, ""

    goto :goto_0
.end method

.method public hasImage()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 46
    const-string v0, "img_path"

    invoke-virtual {p0, v0}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "img_url"

    invoke-virtual {p0, v0}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "img_data"

    invoke-virtual {p0, v0}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public hasUrl()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 50
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setFailMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "failMsg"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/netease/ntsharesdk/ShareArgs;->failMsg:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 38
    if-nez p2, :cond_0

    .line 39
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareArgs;->args:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/netease/ntsharesdk/ShareArgs;->args:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 70
    const-string v1, ""

    .line 71
    .local v1, "res":Ljava/lang/String;
    iget-object v2, p0, Lcom/netease/ntsharesdk/ShareArgs;->args:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    return-object v1

    .line 71
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/ntsharesdk/ShareArgs;->args:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
