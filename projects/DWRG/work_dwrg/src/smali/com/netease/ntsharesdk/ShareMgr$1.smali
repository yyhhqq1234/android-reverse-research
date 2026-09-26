.class Lcom/netease/ntsharesdk/ShareMgr$1;
.super Ljava/lang/Object;
.source "ShareMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntsharesdk/ShareMgr;->share(Lcom/netease/ntsharesdk/ShareArgs;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntsharesdk/ShareMgr;

.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$args:Lcom/netease/ntsharesdk/ShareArgs;

.field private final synthetic val$pfName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntsharesdk/ShareMgr;Ljava/lang/String;Lcom/netease/ntsharesdk/ShareArgs;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->this$0:Lcom/netease/ntsharesdk/ShareMgr;

    iput-object p2, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$pfName:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    iput-object p4, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$act:Landroid/app/Activity;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 191
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$pfName:Ljava/lang/String;

    if-nez v10, :cond_1

    const-string v7, "Other"

    .line 192
    .local v7, "platform":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->this$0:Lcom/netease/ntsharesdk/ShareMgr;

    invoke-virtual {v10, v7}, Lcom/netease/ntsharesdk/ShareMgr;->getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;

    move-result-object v4

    .line 193
    .local v4, "pf":Lcom/netease/ntsharesdk/Platform;
    if-eqz v4, :cond_2

    .line 194
    const-string v10, "share via our jar"

    invoke-static {v10}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 195
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->this$0:Lcom/netease/ntsharesdk/ShareMgr;

    invoke-static {v10}, Lcom/netease/ntsharesdk/ShareMgr;->access$0(Lcom/netease/ntsharesdk/ShareMgr;)Lcom/netease/ntsharesdk/OnShareEndListener;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/netease/ntsharesdk/Platform;->setShareEndListener(Lcom/netease/ntsharesdk/OnShareEndListener;)V

    .line 196
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    iget-object v11, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v4, v10, v11}, Lcom/netease/ntsharesdk/Platform;->share(Lcom/netease/ntsharesdk/ShareArgs;Landroid/app/Activity;)V

    .line 197
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->this$0:Lcom/netease/ntsharesdk/ShareMgr;

    invoke-static {v10, v7}, Lcom/netease/ntsharesdk/ShareMgr;->access$1(Lcom/netease/ntsharesdk/ShareMgr;Ljava/lang/String;)V

    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sdk share to:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_1
    return-void

    .line 191
    .end local v4    # "pf":Lcom/netease/ntsharesdk/Platform;
    .end local v7    # "platform":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$pfName:Ljava/lang/String;

    goto :goto_0

    .line 199
    .restart local v4    # "pf":Lcom/netease/ntsharesdk/Platform;
    .restart local v7    # "platform":Ljava/lang/String;
    :cond_2
    const-string v10, "Other"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 200
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->this$0:Lcom/netease/ntsharesdk/ShareMgr;

    invoke-static {v10}, Lcom/netease/ntsharesdk/ShareMgr;->access$2(Lcom/netease/ntsharesdk/ShareMgr;)Ljava/util/HashMap;

    move-result-object v10

    .line 201
    invoke-static {v7}, Lcom/netease/ntsharesdk/Platform;->getPlatformAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 200
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 201
    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->this$0:Lcom/netease/ntsharesdk/ShareMgr;

    invoke-static {v10}, Lcom/netease/ntsharesdk/ShareMgr;->access$2(Lcom/netease/ntsharesdk/ShareMgr;)Ljava/util/HashMap;

    move-result-object v10

    .line 202
    invoke-static {v7}, Lcom/netease/ntsharesdk/Platform;->getPlatformAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 203
    :cond_3
    const-string v10, "default share"

    invoke-static {v10}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 204
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    invoke-virtual {v10}, Lcom/netease/ntsharesdk/ShareArgs;->hasImage()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 206
    const/4 v9, 0x0

    .line 207
    .local v9, "uri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    const-string v11, "img_url"

    invoke-virtual {v10, v11}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 208
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    const-string v11, "img_url"

    invoke-virtual {v10, v11}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 215
    :cond_4
    :goto_2
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 216
    const-string v10, "image/*"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    .end local v9    # "uri":Landroid/net/Uri;
    :goto_3
    const-string v10, "android.intent.extra.TEXT"

    iget-object v11, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    const-string v12, "text"

    invoke-virtual {v11, v12}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v10, "android.intent.extra.TITLE"

    iget-object v11, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    const-string v12, "title"

    invoke-virtual {v11, v12}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v10, "Other"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 223
    invoke-static {v7}, Lcom/netease/ntsharesdk/Platform;->getPlatformInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 224
    .local v5, "pfInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v7}, Lcom/netease/ntsharesdk/Platform;->getPlatformAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_5

    .line 226
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    const-string v11, "to_blog"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_9

    const/4 v10, 0x1

    :goto_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 227
    .local v3, "isBlog":Ljava/lang/Boolean;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x2

    :goto_5
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "system share to:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x2

    :goto_6
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 231
    .end local v3    # "isBlog":Ljava/lang/Boolean;
    :cond_5
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 232
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 233
    .local v8, "sc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->this$0:Lcom/netease/ntsharesdk/ShareMgr;

    invoke-static {v10}, Lcom/netease/ntsharesdk/ShareMgr;->access$3(Lcom/netease/ntsharesdk/ShareMgr;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 234
    .local v6, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 237
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "pfInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "sc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const-string v10, "Other"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 238
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->this$0:Lcom/netease/ntsharesdk/ShareMgr;

    invoke-static {v10}, Lcom/netease/ntsharesdk/ShareMgr;->access$3(Lcom/netease/ntsharesdk/ShareMgr;)Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    iget-object v11, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->this$0:Lcom/netease/ntsharesdk/ShareMgr;

    invoke-static {v11}, Lcom/netease/ntsharesdk/ShareMgr;->access$4(Lcom/netease/ntsharesdk/ShareMgr;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v11

    const/16 v12, 0x3e5

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 209
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_7
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    const-string v11, "img_path"

    invoke-virtual {v10, v11}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 210
    new-instance v1, Ljava/io/File;

    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->val$args:Lcom/netease/ntsharesdk/ShareArgs;

    const-string v11, "img_path"

    invoke-virtual {v10, v11}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_2

    .line 218
    .end local v1    # "f":Ljava/io/File;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_8
    const-string v10, "text/plain"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 226
    .restart local v5    # "pfInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 227
    .restart local v3    # "isBlog":Ljava/lang/Boolean;
    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 228
    :cond_b
    const/4 v10, 0x1

    goto :goto_6

    .line 240
    .end local v3    # "isBlog":Ljava/lang/Boolean;
    .end local v5    # "pfInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    iget-object v10, p0, Lcom/netease/ntsharesdk/ShareMgr$1;->this$0:Lcom/netease/ntsharesdk/ShareMgr;

    invoke-static {v10}, Lcom/netease/ntsharesdk/ShareMgr;->access$3(Lcom/netease/ntsharesdk/ShareMgr;)Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    const/16 v11, 0x3e5

    invoke-virtual {v10, v2, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1
.end method
