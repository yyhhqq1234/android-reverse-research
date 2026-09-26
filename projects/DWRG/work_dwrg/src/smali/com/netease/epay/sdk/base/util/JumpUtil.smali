.class public Lcom/netease/epay/sdk/base/util/JumpUtil;
.super Ljava/lang/Object;
.source "JumpUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static go2Activity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/app/Activity;
    .param p1, "target"    # Ljava/lang/Class;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "requestCode"    # I

    .prologue
    .line 27
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 32
    :cond_0
    if-lez p3, :cond_2

    .line 33
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 38
    :cond_1
    :goto_0
    return-void

    .line 35
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static go2Activity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "target"    # Ljava/lang/Class;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 17
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    if-eqz p2, :cond_0

    .line 20
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    :cond_1
    return-void
.end method

.method public static gotoServePact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "needSecondTitle"    # Z

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    sget-object v2, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->TITLE:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v2, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v2, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->NEED_SENCOND_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
